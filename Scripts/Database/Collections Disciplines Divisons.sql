-- Overview
SELECT  
	c.collectionid, c.code, c.collectionname, -- c.DisciplineId, 
	-- dsc.disciplineId, 
	dsc.Name discipline, -- dsc.TaxonTreeDefID, dsc.GeographyTreeDefID, dsc.GeologicTimePeriodTreeDefID, -- dsc.RegNumber, dsc.`Type`, dsc.UserGroupScopeId, dsc.DivisionID, dsc.TaxonTreeDefID, dsc.GeographyTreeDefID, 
	dv.divisionId, 
	dv.Name division, dsc.Type DisciplineType, dv.DisciplineType -- , dv.UserGroupScopeId, dv.RegNumber
	FROM collection c
	LEFT JOIN discipline dsc ON dsc.DisciplineID = c.DisciplineID 
	LEFT JOIN division dv ON dv.divisionId = dsc.DivisionID
	-- collectionWHERE dv.divisionId = 327680
	;

-- collections
SELECT 
	c.collectionid, c.code, c.collectionname, dsc.`Name` Discipline, dsc.TaxonTreeDefID TaxonTreeID
	FROM collection c
	LEFT JOIN discipline dsc ON dsc.disciplineId = c.DisciplineID
	ORDER BY dsc.TaxonTreeDefID; 

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
	WHERE (a.LastName = 'Steeman')
	AND a.DivisionID = 688128
	;
-- Natural History Museum of Denmark

-- taxon trees 
-- SELECT * FROM taxontreedef ttd;
SELECT ttd.TaxonTreeDefID, col.CollectionName, dsc.disciplineId, dsc.`Name` DisciplineName, dv.`Name` DivisionName
	FROM taxontreedef ttd 
	LEFT JOIN discipline dsc ON dsc.DisciplineID = ttd.DisciplineID 
	LEFT JOIN division dv    ON dv.divisionId = dsc.DivisionID
	LEFT JOIN collection col ON col.DisciplineID = dsc.disciplineId
	ORDER BY dsc.taxontreedefid;
-- 327681

SELECT * FROM collection;
SELECT * FROM discipline; 

/*
-- localities
SELECT l.locali FROM locality l 
	WHERE l.DisciplineID IN (3, 327681, 425984, 753664)
*/