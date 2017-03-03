
DELETE FROM `creature_template` WHERE `entry` IN (105000,106000,107000,106500,107500,109000);
INSERT INTO `creature_template`(`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`unit_flags2`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`HoverHeight`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`VerifiedBuild`)VALUES
('105000','0','0','0','0','0','21067','0','0','0','Kiarna Wonell','DMG-Sets',NULL,'0','50','50','0','35','128','1','1.14286','1','0','0','0','0','0','1','0','0','0','8','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','1','0','0','','1'),
('106000','0','0','0','0','0','21067','0','0','0','Fiank Lanuk','Tank-Sets',NULL,'0','50','50','0','35','128','1','1.14286','1','0','0','0','0','0','1','0','0','0','8','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','1','0','0','','1'), 
('107000','0','0','0','0','0','21067','0','0','0','Ikanu Quanlin','Heal-Sets',NULL,'0','50','50','0','35','128','1','1.14286','1','0','0','0','0','0','1','0','0','0','8','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','1','0','0','','1'), 
('106500','0','0','0','0','0','21067','0','0','0','Klaus','HOffset Items',NULL,'0','50','50','0','35','128','1','1.14286','1','0','0','0','0','0','1','0','0','0','8','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','1','0','0','','1'), 
('107500','0','0','0','0','0','21067','0','0','0','Sputim Quanlin','Offset Items',NULL,'0','50','50','0','35','128','1','1.14286','1','0','0','0','0','0','1','0','0','0','8','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','1','0','0','','1'), 
('109000','0','0','0','0','0','21067','0','0','0','Ikalan Warnus','Waffen',NULL,'0','50','50','0','35','128','1','1.14286','1','0','0','0','0','0','1','0','0','0','8','0','0','0','0','0','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','1','0','0','','1'); 


DELETE FROM `npc_vendor` WHERE `entry` IN (107500);
INSERT INTO `npc_vendor` (entry, slot, item, maxcount, incrtime, extendedCost) VALUES
('107500', '0', '34358', '0', '0', '0'),
('107500', '0', '40679', '0', '0', '0'),
('107500', '0', '47219', '0', '0', '0'),
('107500', '0', '43992', '0', '0', '0'),
('107500', '0', '37197', '0', '0', '0'),
('107500', '0', '37291', '0', '0', '0'),
('107500', '0', '37647', '0', '0', '0'),
('107500', '0', '47200', '0', '0', '0'),
('107500', '0', '47222', '0', '0', '0'),
('107500', '0', '49124', '0', '0', '0'),
('107500', '0', '49123', '0', '0', '0'),
('107500', '0', '42643', '0', '0', '0'),
('107500', '0', '42642', '0', '0', '0'),
('107500', '0', '40426', '0', '0', '0'),
('107500', '0', '39401', '0', '0', '0'),
('107500', '0', '39277', '0', '0', '0'),
('107500', '0', '40711', '0', '0', '0'),
('107500', '0', '40713', '0', '0', '0'),
('107500', '0', '40707', '0', '0', '0'),
('107500', '0', '40706', '0', '0', '0'),
('107500', '0', '40705', '0', '0', '0'),
('107500', '0', '40709', '0', '0', '0'),
('107500', '0', '40708', '0', '0', '0'),
('107500', '0', '40710', '0', '0', '0'),
('107500', '0', '40715', '0', '0', '0'),
('107500', '0', '40714', '0', '0', '0'),
('107500', '0', '39229', '0', '0', '0'),
('107500', '0', '39257', '0', '0', '0'),
('107500', '0', '39292', '0', '0', '0'),
('107500', '0', '40430', '0', '0', '0'),
('107500', '0', '40683', '0', '0', '0'),
('107500', '0', '40684', '0', '0', '0'),
('107500', '0', '40685', '0', '0', '0'),
('107500', '0', '37364', '0', '0', '0'),
('107500', '0', '37051', '0', '0', '0'),
('107500', '0', '36994', '0', '0', '0'),
('107500', '0', '36981', '0', '0', '0'),
('107500', '0', '36989', '0', '0', '0');

DELETE FROM `npc_vendor` WHERE `entry` IN (106500);
INSERT INTO `npc_vendor` (entry, slot, item, maxcount, incrtime, extendedCost) VALUES
('106500', '0', '37218', '0', '0', '0'),
('106500', '0', '37867', '0', '0', '0'),
('106500', '0', '37730', '0', '0', '0'),
('106500', '0', '37629', '0', '0', '0'),
('106500', '0', '37725', '0', '0', '0'),
('106500', '0', '37613', '0', '0', '0'),
('106500', '0', '37370', '0', '0', '0'),
('106500', '0', '37289', '0', '0', '0'),
('106500', '0', '37637', '0', '0', '0'),
('106500', '0', '37680', '0', '0', '0'),
('106500', '0', '37850', '0', '0', '0'),
('106500', '0', '44258', '0', '0', '0'),
('106500', '0', '37724', '0', '0', '0'),
('106500', '0', '37634', '0', '0', '0'),
('106500', '0', '37366', '0', '0', '0'),
('106500', '0', '37183', '0', '0', '0'),
('106500', '0', '38616', '0', '0', '0'),
('106500', '0', '37842', '0', '0', '0'),
('106500', '0', '37714', '0', '0', '0'),
('106500', '0', '37243', '0', '0', '0'),
('106500', '0', '43312', '0', '0', '0'),
('106500', '0', '37841', '0', '0', '0'),
('106500', '0', '37666', '0', '0', '0'),
('106500', '0', '37640', '0', '0', '0'),
('106500', '0', '40490', '0', '0', '0'),
('106500', '0', '37656', '0', '0', '0'),
('106500', '0', '37365', '0', '0', '0'),
('106500', '0', '37138', '0', '0', '0'),
('106500', '0', '37868', '0', '0', '0'),
('106500', '0', '37845', '0', '0', '0'),
('106500', '0', '37648', '0', '0', '0'),
('106500', '0', '37628', '0', '0', '0'),
('106500', '0', '37654', '0', '0', '0'),
('106500', '0', '37870', '0', '0', '0'),
('106500', '0', '37244', '0', '0', '0'),
('106500', '0', '37150', '0', '0', '0'),
('106500', '0', '37367', '0', '0', '0'),
('106500', '0', '37618', '0', '0', '0'),
('106500', '0', '37632', '0', '0', '0'),
('106500', '0', '37712', '0', '0', '0'),
('106500', '0', '37847', '0', '0', '0'),
('106500', '0', '43405', '0', '0', '0'),
('106500', '0', '43402', '0', '0', '0'),
('106500', '0', '37891', '0', '0', '0'),
('106500', '0', '37682', '0', '0', '0'),
('106500', '0', '37590', '0', '0', '0'),
('106500', '0', '37288', '0', '0', '0'),
('106500', '0', '37217', '0', '0', '0'),
('106500', '0', '44176', '0', '0', '0'),
('106500', '0', '37826', '0', '0', '0'),
('106500', '0', '37801', '0', '0', '0'),
('106500', '0', '37379', '0', '0', '0'),
('106500', '0', '37178', '0', '0', '0'),
('106500', '0', '37152', '0', '0', '0');

-- Voteshop Vendor DMG-Set
DELETE FROM `npc_vendor` WHERE `entry` IN (105000);
INSERT INTO `npc_vendor` (entry, slot, item, maxcount, incrtime, extendedCost) VALUES
('105000', '0', '39496', '0', '0', '0'),
('105000', '0', '39497', '0', '0', '0'),
('105000', '0', '39498', '0', '0', '0'),
('105000', '0', '39499', '0', '0', '0'),
('105000', '0', '39500', '0', '0', '0'),
('105000', '0', '39544', '0', '0', '0'),
('105000', '0', '39545', '0', '0', '0'),
('105000', '0', '39546', '0', '0', '0'),
('105000', '0', '39547', '0', '0', '0'),
('105000', '0', '39548', '0', '0', '0'),
('105000', '0', '39491', '0', '0', '0'),
('105000', '0', '39492', '0', '0', '0'),
('105000', '0', '39493', '0', '0', '0'),
('105000', '0', '39494', '0', '0', '0'),
('105000', '0', '39495', '0', '0', '0'),
('105000', '0', '39617', '0', '0', '0'),
('105000', '0', '39618', '0', '0', '0'),
('105000', '0', '39619', '0', '0', '0'),
('105000', '0', '39620', '0', '0', '0'),
('105000', '0', '39621', '0', '0', '0'),
('105000', '0', '39597', '0', '0', '0'),
('105000', '0', '39601', '0', '0', '0'),
('105000', '0', '39602', '0', '0', '0'),
('105000', '0', '39603', '0', '0', '0'),
('105000', '0', '39604', '0', '0', '0'),
('105000', '0', '39633', '0', '0', '0'),
('105000', '0', '39634', '0', '0', '0'),
('105000', '0', '39635', '0', '0', '0'),
('105000', '0', '39636', '0', '0', '0'),
('105000', '0', '39637', '0', '0', '0'),
('105000', '0', '39521', '0', '0', '0'),
('105000', '0', '39523', '0', '0', '0'),
('105000', '0', '39528', '0', '0', '0'),
('105000', '0', '39529', '0', '0', '0'),
('105000', '0', '39530', '0', '0', '0'),
('105000', '0', '39558', '0', '0', '0'),
('105000', '0', '39560', '0', '0', '0'),
('105000', '0', '39561', '0', '0', '0'),
('105000', '0', '39564', '0', '0', '0'),
('105000', '0', '39565', '0', '0', '0'),
('105000', '0', '39578', '0', '0', '0'),
('105000', '0', '39582', '0', '0', '0'),
('105000', '0', '39579', '0', '0', '0'),
('105000', '0', '39580', '0', '0', '0'),
('105000', '0', '39581', '0', '0', '0'),
('105000', '0', '39605', '0', '0', '0'),
('105000', '0', '39606', '0', '0', '0'),
('105000', '0', '39607', '0', '0', '0'),
('105000', '0', '39608', '0', '0', '0'),
('105000', '0', '39609', '0', '0', '0');


-- Voteshop Vendor Tank 
DELETE FROM `npc_vendor` WHERE `entry` IN (106000);
INSERT INTO `npc_vendor` VALUES
('106000', '0', '39553', '0', '0', '0'),
('106000', '0', '39554', '0', '0', '0'),
('106000', '0', '39555', '0', '0', '0'),
('106000', '0', '39556', '0', '0', '0'),
('106000', '0', '39557', '0', '0', '0'),
('106000', '0', '39623', '0', '0', '0'),
('106000', '0', '39624', '0', '0', '0'),
('106000', '0', '39625', '0', '0', '0'),
('106000', '0', '39626', '0', '0', '0'),
('106000', '0', '39627', '0', '0', '0'),
('106000', '0', '39610', '0', '0', '0'),
('106000', '0', '39611', '0', '0', '0'),
('106000', '0', '39612', '0', '0', '0'),
('106000', '0', '39613', '0', '0', '0'),
('106000', '0', '39622', '0', '0', '0'),
('106000', '0', '39638', '0', '0', '0'),
('106000', '0', '39639', '0', '0', '0'),
('106000', '0', '39640', '0', '0', '0'),
('106000', '0', '39641', '0', '0', '0'),
('106000', '0', '39642', '0', '0', '0'),
('106000', '0', '39592', '0', '0', '0'),
('106000', '0', '39593', '0', '0', '0'),
('106000', '0', '39594', '0', '0', '0'),
('106000', '0', '39595', '0', '0', '0'),
('106000', '0', '39596', '0', '0', '0');


-- Voteshop Vendor Heal
DELETE FROM `npc_vendor` WHERE `entry` IN (107000);
INSERT INTO `npc_vendor` VALUES
('107000', '0', '39514', '0', '0', '0'),
('107000', '0', '39515', '0', '0', '0'),
('107000', '0', '39517', '0', '0', '0'),
('107000', '0', '39518', '0', '0', '0'),
('107000', '0', '39519', '0', '0', '0'),
('107000', '0', '39531', '0', '0', '0'),
('107000', '0', '39538', '0', '0', '0'),
('107000', '0', '39539', '0', '0', '0'),
('107000', '0', '39542', '0', '0', '0'),
('107000', '0', '39543', '0', '0', '0'),
('107000', '0', '39583', '0', '0', '0'),
('107000', '0', '39588', '0', '0', '0'),
('107000', '0', '39589', '0', '0', '0'),
('107000', '0', '39590', '0', '0', '0'),
('107000', '0', '39591', '0', '0', '0'),
('107000', '0', '39628', '0', '0', '0'),
('107000', '0', '39629', '0', '0', '0'),
('107000', '0', '39630', '0', '0', '0'),
('107000', '0', '39631', '0', '0', '0'),
('107000', '0', '39632', '0', '0', '0');

-- Voteshop Vendor Waffen
DELETE FROM `npc_vendor` WHERE `entry` IN (109000);
INSERT INTO `npc_vendor` VALUES
('109000', '0', '45204', '0', '0', '0'),
('109000', '0', '45076', '0', '0', '0'),
('109000', '0', '37852', '0', '0', '0'),
('109000', '0', '39296', '0', '0', '0'),
('109000', '0', '45130', '0', '0', '0'),
('109000', '0', '45210', '0', '0', '0'),
('109000', '0', '39281', '0', '0', '0'),
('109000', '0', '39226', '0', '0', '0'),
('109000', '0', '41257', '0', '0', '0'),
('109000', '0', '39245', '0', '0', '0'),
('109000', '0', '39221', '0', '0', '0'),
('109000', '0', '44311', '0', '0', '0'),
('109000', '0', '40553', '0', '0', '0'),
('109000', '0', '45074', '0', '0', '0'),
('109000', '0', '45205', '0', '0', '0'),
('109000', '0', '39256', '0', '0', '0'),
('109000', '0', '39255', '0', '0', '0'),
('109000', '0', '37693', '0', '0', '0'),
('109000', '0', '40704', '0', '0', '0'),
('109000', '0', '45078', '0', '0', '0'),
('109000', '0', '39427', '0', '0', '0'),
('109000', '0', '42435', '0', '0', '0'),
('109000', '0', '43613', '0', '0', '0'),
('109000', '0', '40716', '0', '0', '0'),
('109000', '0', '43612', '0', '0', '0'),
('109000', '0', '37191', '0', '0', '0'),
('109000', '0', '37238', '0', '0', '0'),
('109000', '0', '39473', '0', '0', '0'),
('109000', '0', '37619', '0', '0', '0'),
('109000', '0', '43085', '0', '0', '0'),
('109000', '0', '39276', '0', '0', '0');