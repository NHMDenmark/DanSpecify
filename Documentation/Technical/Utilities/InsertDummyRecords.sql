BEGIN
    
	DECLARE highest INT DEFAULT 0;
	
   WHILE amount > 0 DO

    	SELECT CAST(TRIM(LEADING '0' FROM MAX(catalognumber)) AS UNSIGNED) INTO highest FROM collectionobject;
    	 
    	SET highest = highest + 1;
    	
 		INSERT INTO `collectionobject` (`TimestampCreated`, `TimestampModified`, `Version`, `CollectionMemberID`, `CatalogedDate`, 
 				`CatalogNumber`, 
				`ProjectNumber`, `CollectionID`, `CreatedByAgentID`, `CatalogerID`) 
 			VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, collectionID, '2022-07-08',
 				LPAD(highest, 9, 0),
				ProjectName, collectionID, agentID, catalogerID);
       
   	SET amount = amount - 1;
        
   END WHILE;

END
