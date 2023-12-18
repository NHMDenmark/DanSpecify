DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `AddAttachmentWithFileNameToAltCatNr`(
	IN `AltCatNr` VARCHAR(50),
	IN `FileName` VARCHAR(255),
	IN `CollectionId` INT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

SET @altcatnr := CAST(AltCatNr AS CHAR CHARACTER SET UTF8);
SET @collectionid := CAST(CollectionId AS CHAR CHARACTER SET UTF8);

INSERT INTO attachment 
       (TimestampCreated, Version, AttachmentLocation, FileCreatedDate, GUID, 
		  License, MimeType, origFilename, ScopeID, ScopeType, TableID, Title, CreatedByAgentID, IsPublic)
VALUES (CURRENT_TIMESTAMP(), 0, FileName, DATE(CURRENT_TIMESTAMP()), (select md5(UUID())), 
        'CC BY 4.0', 'image/jpeg', FileName, @collectionid, 0, 1, Filename, 10215, 1);

INSERT INTO collectionobjectattachment  
		 (Timestampcreated, Version, CollectionMemberID, Ordinal, CreatedByAgentID, AttachmentID, CollectionobjectID) 
VALUES (CURRENT_TIMESTAMP(), 0, @collectionid, 0, 10215, LAST_INSERT_ID(), (SELECT collectionobjectid FROM collectionobject WHERE AltCatalogNumber = @altcatnr LIMIT 1));

-- END

END
//