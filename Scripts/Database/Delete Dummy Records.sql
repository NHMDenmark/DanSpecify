 SELECT DISTINCT co.collectionobjectid, co.catalognumber, co.projectnumber, co.Remarks, co.collectingeventid, d.DeterminationID, t.FullName, c.CollectionName, co.TimestampCreated
 	FROM collectionobject co 
	LEFT JOIN determination d ON d.CollectionObjectID = co.collectionobjectid
	LEFT JOIN taxon t ON t.TaxonID = d.DeterminationID
	LEFT JOIN collection c ON c.collectionId = co.CollectionID
-- DELETE FROM collectionobject AS co
-- UPDATE collectionobject AS co SET co.projectnumber = 'Reserved Dummy Records'
	WHERE 
	   co.ProjectNumber IN ('Reserved Dummy Records','Reserved for DaSSCo', 'Mass digitization init', 'Exh. Pollinating beetles 3.7D.2', 'Reserved for båndfluesamling')
	   /*AND (
				catalogNumber BETWEEN 000 AND 000 
			 )*/ 
        AND
		 catalogNumber IN (
		 
		 );
	      
	      