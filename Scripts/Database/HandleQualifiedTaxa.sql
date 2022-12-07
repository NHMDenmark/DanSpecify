-- /*
 SELECT t.TaxonID, t.RankID, t.Name, t.FullName, t.Author, 
 			TRIM(SPLIT_STR(t.Name, ' ', 2)) new_name, 
 			-- CONCAT(TRIM(SPLIT_STR(t.fullname, ' ', 1)), ' ', 
			 	TRIM(SPLIT_STR(t.fullname, ' ', 2))
				 -- ) 
				 new_fullname, 
			d.DeterminationID, d.Qualifier FROM taxon t 
		LEFT JOIN determination d ON d.TaxonID = t.TaxonID 
		WHERE t.taxontreedefid = 13 AND t.name LIKE '%cf%';
-- */
 /*
 UPDATE taxon t -- LEFT JOIN determination d ON d.TaxonID = t.TaxonID 
 	SET t.Name = 
		-- CONCAT(TRIM(SPLIT_STR(t.fullname, ' ', 1)), ' ', 
	 	TRIM(SPLIT_STR(t.fullname, ' ', 2))
		 -- )  
 	    , t.FullName = 
		  	-- CONCAT(TRIM(SPLIT_STR(t.fullname, ' ', 1)), ' ', 
			  TRIM(SPLIT_STR(t.fullname, ' ', 3))
			  -- )
		 -- , d.Qualifier = 'cf.'
 	WHERE t.taxontreedefid = 13 AND t.name LIKE '%c.f%' -- AND d.DeterminationID IS NOT NULL;
 */