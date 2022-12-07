-- UPDATE taxon t 
 SELECT t.TaxonID, CONCAT(p2.Name, ' ', p1.Name, ' var. ', t.Name) newFullName, t.FullName, t.RankID, t.TaxonTreeDefID, t.YesNo9 FROM taxon t 
	LEFT JOIN taxon p1 ON p1.TaxonID = t.ParentID
	LEFT JOIN taxon p2 ON p2.TaxonID = p1.ParentID 
-- SET t.FullName = CONCAT(p2.Name, ' ', p1.Name, ' var. ', t.Name), t.YesNo9 = 1
	WHERE 
		t.RankID = 240 AND t.taxontreedefid = 13
		AND t.FullName NOT LIKE '%*%' 
		AND t.fullname NOT LIKE '% %' 
		AND t.fullname NOT LIKE '%.%' 