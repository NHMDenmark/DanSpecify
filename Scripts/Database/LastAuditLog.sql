SELECT spa.TimestampCreated, spa.TimestampModified, spa.TableNum, spa.ParentTableNum, CONCAT(a.FirstName, ' ', a.LastName) agentName, spa.`Action`  
FROM spauditlog spa 
	LEFT JOIN agent a ON spa.ModifiedByAgentID = a.AgentID 
	-- LEFT JOIN collectionobject co ON spa.RecordId = co.
ORDER BY spa.TimestampCreated DESC
LIMIT 1000; 