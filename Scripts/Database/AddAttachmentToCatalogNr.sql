DELIMITER //

CREATE DEFINER=`root`@`%` PROCEDURE `AddAttachmentToCatalogNr`(
	IN `CatalogNr` VARCHAR(50),
	IN `ContainerName` VARCHAR(50)
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

IF ContainerName IS NOT NULL THEN 
	SET @filename  := CONCAT('NHMD-', TRIM('Sheet_' FROM ContainerName), '.jpg');
ElSE
	SET @filename  := CONCAT('NHMD-', TRIM(LEADING '0' FROM CatalogNr), '.jpg');
END IF;

INSERT INTO attachment 
       (TimestampCreated, Version, AttachmentLocation, FileCreatedDate, GUID, License, MimeType, origFilename, ScopeID, ScopeType, TableID, Title, CreatedByAgentID, IsPublic)
VALUES (CURRENT_TIMESTAMP(), 0, @filename, DATE(CURRENT_TIMESTAMP()), (select md5(UUID())), 'CC BY 4.0', 'image/jpeg', @filename, 688130, 0, 1, @filename, 10215, 1);

INSERT INTO collectionobjectattachment  
		 (Timestampcreated, Version, CollectionMemberID, Ordinal, CreatedByAgentID, AttachmentID, CollectionobjectID) 
VALUES (CURRENT_TIMESTAMP(), 0, (SELECT collectionid FROM collectionobject WHERE catalognumber = CatalogNr LIMIT 1), 0, 10215, LAST_INSERT_ID(), (SELECT collectionobjectid FROM collectionobject WHERE catalognumber = CatalogNr LIMIT 1));

END
//
