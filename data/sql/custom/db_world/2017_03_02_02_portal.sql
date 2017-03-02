SET @ENTRY := 303000; -- New game object id for the portal object
SET @TEXT := 'Portal nach Archavons Kammer'; -- Tooltip to show when hovering over portal
SET @display := 1327; -- Display id to use for the portal

-- Coordinates to port to:
SET @map := 571; -- Map id
SET @X := 5453.720215;
SET @Y := 2840.790039;
SET @z := 421.277069;
SET @o := 0; -- Orientation in radians, 0 is north

DELETE FROM `gameobject_template` WHERE entry = @ENTRY;
INSERT INTO `gameobject_template`(`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`size`,`Data0`,`Data1`,`Data2`,`Data3`,`Data4`,`Data5`,`Data6`,`Data7`,`Data8`,`Data9`,`Data10`,`Data11`,`Data12`,`Data13`,`Data14`,`Data15`,`Data16`,`Data17`,`Data18`,`Data19`,`Data20`,`Data21`,`Data22`,`Data23`,`AIName`,`ScriptName`,`VerifiedBuild`)
VALUES
(@ENTRY,'10',@display,@TEXT,'','','','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartGameObjectAI','','1'); 

-- Portal nach Archavons Kammer SAI
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,0,0,0,0,0,62,571,0,0,0,0,0,7,0,0,0,5453.72,2840.79,421.277,0,"Portal nach Archavons Kammer - On Gossip Option 0 Selected - Teleport");
