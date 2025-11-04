-- Overview
SELECT  
	c.collectionid, c.code, c.collectionname, c.DisciplineId, 
	dsc.disciplineId, dsc.Name discipline, dsc.TaxonTreeDefID, dsc.GeographyTreeDefID, -- dsc.RegNumber, dsc.`Type`, dsc.UserGroupScopeId, dsc.DivisionID, dsc.TaxonTreeDefID, dsc.GeographyTreeDefID, 
	dv.divisionId, dv.Name division, dsc.Type DisciplineType, dv.DisciplineType -- , dv.UserGroupScopeId, dv.RegNumber
	FROM collection c
	LEFT JOIN discipline dsc ON dsc.DisciplineID = c.DisciplineID 
	LEFT JOIN division dv ON dv.divisionId = dsc.DivisionID
	-- collectionWHERE dv.divisionId = 327680
	;

-- collections
SELECT 
	c.collectionid, c.code, c.collectionname, c.GUID, c.RegNumber,  c.DisciplineId
	FROM collection c; -- WHERE disciplineid = 163840;  

-- disciplines
SELECT 
-- * 
		d.disciplineId, d.Name, d.RegNumber, d.`Type`, d.UserGroupScopeId, d.DivisionID, d.TaxonTreeDefID, d.GeographyTreeDefID, d.GeologicTimePeriodTreeDefID, d.LithoStratTreeDefID
	FROM discipline d ORDER BY d.DivisionID; -- WHERE divisionid = 2; 

-- divisions 
SELECT -- * -- 
		d.divisionId, d.Name, d.DisciplineType, d.UserGroupScopeId, d.RegNumber
	FROM division d; 

-- agents
SELECT a.AgentID, a.FirstName, a.LastName, a.Email, a.Remarks, a.SpecifyUserID, a.DivisionID FROM agent a 
	WHERE (a.LastName = 'Soelberg');
	--	AND a.DivisionID = 688128
	-- WHERE a.FirstName = 'Aslak'
-- Natural History Museum of Denmark

/*
-- localities
SELECT l.locali FROM locality l 
	WHERE l.DisciplineID IN (3, 327681, 425984, 753664)
*/