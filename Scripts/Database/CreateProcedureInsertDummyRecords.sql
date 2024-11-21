DELIMITER //

CREATE OR REPLACE DEFINER=`root`@`%` PROCEDURE `InsertDummyRecords`(
    IN `amount` INT,
    IN `basenr` INT,
    IN `collectionID` INT,
    IN `catalogerID` INT,
    IN `agentID` INT,
    IN `ProjectName` TINYTEXT,
    IN `Remarks` TEXT
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT 'copy from old server'
BEGIN
    DECLARE highest INT DEFAULT 0;
    DECLARE catalogExists INT DEFAULT 0;

    IF basenr <> 0 THEN
        SET highest = basenr - 1;
    END IF;

    insert_loop: WHILE amount > 0 DO
        IF basenr = 0 THEN
	        SELECT COALESCE(MAX(CAST(TRIM(LEADING '0' FROM catalognumber) AS UNSIGNED)), 0) INTO highest FROM collectionobject;
        END IF;

        SET highest = highest + 1;

        -- Check if the catalog number already exists
        SELECT COUNT(*) INTO catalogExists FROM collectionobject WHERE CatalogNumber = LPAD(highest, 9, 0);
        
        IF catalogExists > 0 THEN
            -- Skip the insertion if the catalog number exists
            ITERATE insert_loop;
        END IF;

        INSERT INTO `collectionobject` (
            `TimestampCreated`, `TimestampModified`, `Version`, `CollectionMemberID`, `CatalogedDate`, 
            `CatalogNumber`, `ProjectNumber`, `Remarks`, `CollectionID`, `CreatedByAgentID`, `CatalogerID`, `YesNo1`, `YesNo3`
        ) VALUES (
            CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, collectionID, CURDATE(),
            LPAD(highest, 9, 0), ProjectName, Remarks, collectionID, agentID, catalogerID, 0, 1
        );

        SET amount = amount - 1;
    END WHILE;
END//