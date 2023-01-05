-- UPDATE taxon t 
 SELECT t.TaxonID, CONCAT(SPLIT_STR(TRIM(t.FullName), ' ', 1), ' ', SPLIT_STR(TRIM(t.FullName), ' ', 3)) newFullName, SPLIT_STR(TRIM(t.Name), ' ', 2) newName, t.Name, t.FullName, t.RankID, t.TaxonTreeDefID, t.YesNo9, d.DeterminationID, d.Qualifier, d.YesNo2 FROM taxon t 
 LEFT JOIN determination d ON d.TaxonID = t.TaxonID 
-- SET t.FullName = CONCAT(SPLIT_STR(TRIM(t.FullName), ' ', 1), ' ', SPLIT_STR(TRIM(t.FullName), ' ', 3)), t.Name = SPLIT_STR(TRIM(t.Name), ' ', 2), t.YesNo9 = 1, d.qualifier = 'cf.', d.YesNo2 = 1
	WHERE 
		t.RankID = 220 AND t.taxontreedefid = 13
		AND TRIM(t.FullName) LIKE '%cf%' 
		-- AND TRIM(t.Name) LIKE 'cf%'
		AND d.DeterminationID IS NOT NULL 
		AND d.YesNo2 IS NULL
		AND t.YesNo9 IS NULL 
		
-- --	SET t.FullName = CONCAT(SPLIT_STR(TRIM(t.FullName), ' ', 2), ' ', SPLIT_STR(TRIM(t.FullName), ' ', 3)), t.Name = SPLIT_STR(TRIM(t.Name), ' ', 2), t.YesNo9 = 1    
		