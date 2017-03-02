DROP TABLE IF EXISTS `dms_restriction`;
 CREATE TABLE `dms_restriction` (
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `type` tinyint(3) NOT NULL DEFAULT '0',
   `parameter` int(11) unsigned NOT NULL DEFAULT '0',
   `comment` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
DELETE FROM `dms_restriction` WHERE `id` IN (1,2,3,4,5,6,7);
INSERT INTO `dms_restriction` (`id`, `type`, `parameter`, `comment`) VALUES 
(1, 4, 16777216, 'AREA_FLAG_WINTERGRASP'),
(2, 5, 1, 'Duel'),
(3, 5, 2, 'Battlegrounds'),
(4, 5, 3, 'Arena'),
(5, 5, 4, 'Dungeon'),
(6, 5, 5, 'Raid'),
(7, 5, 6, 'All other instanceable maps');
