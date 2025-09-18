 SELECT co.collectionobjectid, co.catalognumber, co.projectnumber, co.collectingeventid, d.DeterminationID, t.FullName, c.CollectionName
 	FROM collectionobject co 
	LEFT JOIN determination d ON d.CollectionObjectID = co.collectionobjectid
	LEFT JOIN taxon t ON t.TaxonID = d.DeterminationID
	LEFT JOIN collection c ON c.collectionId = co.CollectionID
-- DELETE FROM collectionobject 
	WHERE 
	   ProjectNumber IN ('Reserved for DaSSCo', 'Mass digitization init', 'Exh. Pollinating beetles 3.7D.2', 'Reserved for båndfluesamling') AND 
--			(
/*				catalogNumber BETWEEN xxx AND xxx OR 
				catalogNumber BETWEEN xxx AND xxx */
--			 ) 
		 catalogNumber IN (
		 000
		 )
	      ;
	      