 SELECT t.TaxonID, t.RankID, t.Name, t.FullName, t.Author, TRIM(SPLIT_STR(t.Name, ' ', 2)) new_name, TRIM(SPLIT_STR(t.fullname, ' ', 2)) new_fullname, d.DeterminationID, d.Qualifier FROM taxon t 
-- UPDATE taxon t 
		LEFT JOIN determination d ON d.TaxonID = t.TaxonID 
-- SET t.Name  = TRIM(SPLIT_STR(t.Name, ' ', 2)), t.FullName = TRIM(SPLIT_STR(t.fullname, ' ', 2))
		WHERE t.taxontreedefid = 13 AND t.name LIKE 'cf%'
			AND d.DeterminationID IS NULL 