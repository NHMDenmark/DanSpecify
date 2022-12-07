-- UPDATE taxon t 
SELECT t.TaxonID, SPLIT_STR(t.FullName, ' ', 2) newFullName, SPLIT_STR(t.Name, ' ', 2) newName, t.Name, t.FullName, t.RankID, t.TaxonTreeDefID, t.YesNo9, d.DeterminationID FROM taxon t 
 LEFT JOIN determination d ON d.TaxonID = t.TaxonID 
--	SET t.FullName = SPLIT_STR(t.FullName, ' ', 2), t.Name = SPLIT_STR(t.Name, ' ', 2), t.YesNo9 = 1    
	WHERE 
		t.RankID = 180 AND t.taxontreedefid = 13
		AND t.FullName LIKE 'cf%'
		AND d.DeterminationID IS NULL 
		
		