DELETE FROM `command` WHERE `name` = 'reload dms_restrictions';
INSERT INTO `command` (`name`,`security`,`help`) 
VALUES 
('reload dms_restrictions','6','Syntax: .reload dms_restrictions');
