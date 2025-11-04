 SELECT co.collectionobjectid, co.catalognumber, co.projectnumber, co.collectingeventid, co.YesNo1 Publish, d.DeterminationID, t.TaxonID, t.FullName, c.CollectionName
 	FROM collectionobject co 
-- UPDATE collectionobject AS co 
	LEFT JOIN determination d ON d.CollectionObjectID = co.collectionobjectid
	LEFT JOIN taxon t ON t.TaxonID = d.TaxonID
	LEFT JOIN collection c ON c.collectionId = co.CollectionID
-- DELETE FROM collectionobject 
-- SET co.YesNo1 = 0 
	WHERE 
	   ProjectNumber IN ('Reserved for DaSSCo', 'Mass digitization init', 'Exh. Pollinating beetles 3.7D.2', 'Reserved for båndfluesamling')  
--		AND (
/*				catalogNumber BETWEEN xxx AND xxx OR 
				catalogNumber BETWEEN xxx AND xxx */
--			 ) 
    AND catalogNumber IN ( 000 )
	   ;
	      