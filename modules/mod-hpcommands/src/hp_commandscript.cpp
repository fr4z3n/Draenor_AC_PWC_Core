#include "ScriptMgr.h"
#include "Player.h"
#include "MapManager.h"
#include "ObjectMgr.h"
#include "Chat.h"
#include "Language.h"

#include <map>
#include <set>

class cms_commandscript : public CommandScript
{
    public:
        cms_commandscript() : CommandScript("cms_commandscript") { }

        ChatCommand* GetCommands() const
        {
            static ChatCommand PwcCommandTable[] =
            {
                { "pteleport",       SEC_CONSOLE,       true,   &HandlePTeleportCommand,     "", NULL },
                { "refunditem",      SEC_CONSOLE,       true,   &HandleItemDestroy,          "", NULL },
                { "professionset",   SEC_CONSOLE,       true,   &HandleProfessionSet,          "", NULL },
                { NULL,              0,                 false,  NULL,                        "", NULL }
            };
            return PwcCommandTable;
        }

        //teleport Player with Name at coordinates, including Z and orientation
        static bool HandlePTeleportCommand(ChatHandler* handler, const char *args)
        {
            if (!*args)
                return false;

            char* player_name = strtok((char*)args, " ");
            char* goX = strtok((char*)NULL, " ");
            char* goY = strtok((char*)NULL, " ");
            char* goZ = strtok((char*)NULL, " ");
            char* id = strtok((char*)NULL, " ");
            char* port = strtok((char*)NULL, " ");

            Player* player;
            uint64 target_guid;
            if (!handler->extractPlayerTarget(player_name, &player, &target_guid))
                return false;

            //check if the player is online, otherwise the server will crash
            if (!player)
                return false;

            if (!goX || !goY)
                return false;

            float x = (float)atof(goX);
            float y = (float)atof(goY);
            float z;
            float ort = port ? (float)atof(port) : player->GetOrientation();
            uint32 mapId = id ? (uint32)atoi(id) : player->GetMapId();

            if (goZ)
            {
                z = (float)atof(goZ);
                if (!MapManager::IsValidMapCoord(mapId, x, y, z))
                {
                    handler->PSendSysMessage(LANG_INVALID_TARGET_COORD, x, y, mapId);
                    handler->SetSentErrorMessage(true);
                    return false;
                }
            }
            else
            {
                if (!MapManager::IsValidMapCoord(mapId, x, y))
                {
                    handler->PSendSysMessage(LANG_INVALID_TARGET_COORD, x, y, mapId);
                    handler->SetSentErrorMessage(true);
                    return false;
                }
                Map const* map = sMapMgr->CreateBaseMap(mapId);
                z = std::max(map->GetHeight(x, y, MAX_HEIGHT), map->GetWaterLevel(x, y));
            }

            // stop flight if need
            if (player->isInFlight())
            {
                player->GetMotionMaster()->MovementExpired();
                player->CleanupAfterTaxiFlight();
            }
            // save only in non-flight case
            else
                player->SaveRecallPosition();

            player->TeleportTo(mapId, x, y, z, ort);
            return true;
        }

        static bool HandleItemDestroy(ChatHandler* handler, const char* args)
        {
            if (!*args)
                return false;

            uint32 itemId = 0;

            char* playerName = strtok((char*)args, " ");
            char* itemEntry  = strtok((char*)NULL, " ");

            if (!playerName || !itemEntry)
                return false;

            itemId = uint32(atol(itemEntry));

            Player* player;
            uint64 target_guid;
            if (!handler->extractPlayerTarget(playerName, &player, &target_guid))
                return false;

            ItemTemplate const* itemTemplate = sObjectMgr->GetItemTemplate(itemId);
            if (!itemTemplate)
            {
                handler->PSendSysMessage("Invalid item entry: %u.", itemId);
                handler->SetSentErrorMessage(true);
                return false;
            }

            //Check if the player is online
            if (player)
            {
                Item* item = player->GetItemByEntry(itemTemplate->ItemId);
                if (!item)
                {
                    handler->PSendSysMessage("The player does not posses that item!");
                    handler->SetSentErrorMessage(true);
                    return false;
                }
                else
                {
                    player->DestroyItem(item->GetBagSlot(), item->GetSlot(), true);
                    handler->PSendSysMessage("Item Destroyed.");
                }
            }
            else
            {
                handler->PSendSysMessage("The character is offline or invalid.");
                handler->SetSentErrorMessage(true);
                return false;
            }

            return true;
        }

        static bool HandleProfessionSet(ChatHandler* handler, char const* args)
        {
		    if (!*args)
			    return false;

    		uint32 skill = 0;

    		char* playerName = strtok((char*)args, " ");
    		char* skillEntry = strtok((char*)NULL, " ");

    		if (!playerName || !skillEntry)
    			return false;

    		skill = uint32(atol(skillEntry));
            //int32 skill = atoi(skillStr);

    		Player* target;
	    	ObjectGuid targetGuid;
    		if (!handler->extractPlayerTarget(playerName, &target, &targetGuid))
	    		return false;
		
            if (!target)
            {
	    		handler->PSendSysMessage("No character selected");
                handler->SetSentErrorMessage(true);
                return false;
            }
		
            char const* maxPureSkill = "450";

            if (skill <= 0)
            {
	    		handler->PSendSysMessage("Falscher Skill!");
                handler->SetSentErrorMessage(true);
                return false;
            }

            int32 level = atol(maxPureSkill);

            SkillLineEntry const* skillLine = sSkillLineStore.LookupEntry(skill);
            if (!skillLine)
            {
	    		handler->PSendSysMessage("Falscher Skill!");
                handler->SetSentErrorMessage(true);
                return false;
            }

            bool targetHasSkill = target->GetSkillValue(skill) != 0;


            if (!targetHasSkill)
            {
	    		handler->PSendSysMessage("No skills found");
                handler->SetSentErrorMessage(true);
                return false;
            }

            // If our target does not yet have the skill they are trying to add to them, the chosen level also becomes
            // the max level of the new profession.
            uint16 max = atoul(maxPureSkill);


            // If the player has the skill, we get the current skill step. If they don't have the skill, we
            // add the skill to the player's book with step 1 (which is the first rank, in most cases something
            // like 'Apprentice <skill>'.
            target->SetSkill(skill, targetHasSkill ? target->GetSkillStep(skill) : 1, level, max);
            handler->PSendSysMessage(LANG_SET_SKILL, skill, skillLine->name[handler->GetSessionDbcLocale()], handler->GetNameLink(target).c_str(), level, max);
            return true;
        }
};

void AddSC_cms_commandscript()
{
    new cms_commandscript();
}
