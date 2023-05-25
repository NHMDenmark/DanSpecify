DELIMITER //

CREATE PROCEDURE `InsertDummyRecords`(
	IN `amount` INT,
	IN `collectionID` INT,
	IN `catalogerID` INT,
	IN `agentID` INT,
	IN `ProjectName` TINYTEXT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER

BEGIN
    
	DECLARE highest INT DEFAULT 0;
	
   WHILE amount > 0 DO

    	SELECT CAST(TRIM(LEADING '0' FROM MAX(catalognumber)) AS UNSIGNED) INTO highest FROM collectionobject;
    	 
    	SET highest = highest + 1;
    	
 		INSERT INTO `collectionobject` (`TimestampCreated`, `TimestampModified`, `Version`, `CollectionMemberID`, `CatalogedDate`, 
 				`CatalogNumber`, `ProjectNumber`, `CollectionID`, `CreatedByAgentID`, `CatalogerID`, `YesNo1`, `YesNo3`) 
 			VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, collectionID, '2022-07-08',
 				LPAD(highest, 9, 0),
				ProjectName, collectionID, agentID, catalogerID, 0, 1);
       
   	SET amount = amount - 1;
        
   END WHILE;

END//
