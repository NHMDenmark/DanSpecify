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
    DECLARE highest INT;
    DECLARE next_num INT;
    DECLARE i INT DEFAULT 0;

    -- Calculate the starting catalog number
    IF basenr = 0 THEN
        SELECT COALESCE(MAX(CAST(TRIM(LEADING '0' FROM catalognumber) AS UNSIGNED)), 0) INTO highest
        FROM collectionobject;
        SET next_num = highest + 1;
    ELSE
        SET next_num = basenr;
    END IF;

    -- Create a temporary table to hold the new catalog numbers
    DROP TEMPORARY TABLE IF EXISTS temp_catalog_numbers;
    CREATE TEMPORARY TABLE temp_catalog_numbers (
        catalog_number VARCHAR(9) PRIMARY KEY
    );

    -- Generate all catalog numbers in one go
    WHILE i < amount DO
        SET i = i + 1;
        INSERT IGNORE INTO temp_catalog_numbers
        VALUES (LPAD(next_num + i - 1, 9, 0));
    END WHILE;

    -- Bulk insert all valid catalog numbers
    INSERT INTO `collectionobject` (
        `TimestampCreated`, `TimestampModified`, `Version`, `CollectionMemberID`, `CatalogedDate`,
        `CatalogNumber`, `ProjectNumber`, `Remarks`, `CollectionID`, `CreatedByAgentID`, `CatalogerID`, `YesNo1`, `YesNo3`
    )
    SELECT
        CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, collectionID, CURDATE(),
        catalog_number, ProjectName, Remarks, collectionID, agentID, catalogerID, 0, 1
    FROM temp_catalog_numbers;

    -- Clean up
    DROP TEMPORARY TABLE IF EXISTS temp_catalog_numbers;
END//
