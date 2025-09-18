SET @projectName   = 'Reserved for DaSSCo'; 
SET @remark        = 'Reserved dummy records to be deleted before import'; 
SET @collection    = 'NHMD Entomology'; 
SET @catalogerMail = 'fedor.steeman@snm.ku.dk'; 
SET @creatorMail   = 'fedor.steeman@snm.ku.dk'; 
SET @amount        = 1000;
SET @baseline      = 0;

SET @collectionid = 0;
SELECT collectionid INTO @collectionid FROM collection WHERE collectionname = @collection LIMIT 1;
SET @divisionid = 0;
SELECT d.DivisionID INTO @divisionid FROM collection c 
	JOIN discipline d ON d.disciplineId = c.DisciplineID 
	WHERE c.collectionname = @collection LIMIT 1;

SET @catalogerid = 0;
SELECT a.AgentID INTO @catalogerid FROM agent a WHERE a.DivisionID = @divisionid AND a.Email = @catalogerMail;
SET @creatorid = 0;
SELECT a.AgentID INTO @creatorid FROM agent a WHERE a.DivisionID = @divisionid AND a.Email = @creatorMail;

CALL `InsertDummyRecords`(@amount, @baseline, @collectionid, @catalogerid, @creatorid, @projectName, @remark);
SELECT co.CollectionObjectID, co.CatalogNumber, co.ProjectNumber, co.Remarks 
	FROM collectionobject co 
	WHERE co.ProjectNumber = @projectName AND co.Remarks = @remark
	ORDER BY co.CatalogNumber;




