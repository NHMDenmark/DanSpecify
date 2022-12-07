-- UPDATE taxon t 
SELECT t.TaxonID, CONCAT(SPLIT_STR(TRIM(t.FullName), ' ', 2), ' ', SPLIT_STR(TRIM(t.FullName), ' ', 3)) newFullName, SPLIT_STR(TRIM(t.Name), ' ', 1) newName, t.Name, t.FullName, t.RankID, t.TaxonTreeDefID, t.YesNo9, d.DeterminationID FROM taxon t 
 LEFT JOIN determination d ON d.TaxonID = t.TaxonID 
-- --	SET t.FullName = CONCAT(SPLIT_STR(TRIM(t.FullName), ' ', 2), ' ', SPLIT_STR(TRIM(t.FullName), ' ', 3)), t.Name = SPLIT_STR(TRIM(t.Name), ' ', 2), t.YesNo9 = 1    
-- SET t.FullName = CONCAT(SPLIT_STR(TRIM(t.FullName), ' ', 2), ' ', SPLIT_STR(TRIM(t.FullName), ' ', 3)), t.Name = SPLIT_STR(TRIM(t.Name), ' ', 1), t.YesNo9 = 1   
	WHERE 
		t.RankID = 220 AND t.taxontreedefid = 13
		AND TRIM(t.FullName) LIKE 'cf%' 
		-- AND TRIM(t.Name) LIKE 'cf%'
		AND d.DeterminationID IS NULL 
		
		