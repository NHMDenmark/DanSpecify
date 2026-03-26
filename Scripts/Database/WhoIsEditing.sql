SELECT DISTINCT 
       a.AgentID, CONCAT(CASE WHEN a.FirstName IS NOT NULL THEN a.FirstName ELSE '' END, CASE WHEN a.MiddleInitial IS NOT NULL THEN CONCAT(' ', a.MiddleInitial, ' ') ELSE ' ' END, a.LastName) whodunnit, 
		 spa.TimestampModified,
     CASE 
        WHEN spa.Action = 0 THEN 'Create' 
        WHEN spa.Action = 1 THEN 'Update' 
        WHEN spa.Action = 2 THEN 'Delete' 
        WHEN spa.Action = 3 THEN 'Tree Merge' 
        WHEN spa.Action = 4 THEN 'Tree Move' 
        WHEN spa.Action = 5 THEN 'Tree Synonymize' 
        WHEN spa.Action = 6 THEN 'Tree Desynonymize' 
        ELSE 'Unknown'
    END AS ActionName,   
    spa.TableNum,
    CASE 
        WHEN spa.TableNum = 1 THEN 'CollectionObject' 
        WHEN spa.TableNum = 2 THEN 'Locality' 
        WHEN spa.TableNum = 4 THEN 'Taxon' 
        WHEN spa.TableNum = 5 THEN 'Agent' 
        WHEN spa.TableNum = 8 THEN 'Address' 
        WHEN spa.TableNum = 9 THEN 'Determination' 
        WHEN spa.TableNum = 10 THEN 'CollectingEvent' 
        WHEN spa.TableNum = 30 THEN 'Collector' 
        WHEN spa.TableNum = 31 THEN 'Container' 
        WHEN spa.TableNum = 52 THEN 'Loan' 
        WHEN spa.TableNum = 54 THEN 'Loan Preparation' 
        WHEN spa.TableNum = 55 THEN 'Loan Return Preparation' 
        WHEN spa.TableNum = 58 THEN 'Storage' 
        WHEN spa.TableNum = 63 THEN 'Preparation' 
        WHEN spa.TableNum = 68 THEN 'RecordSet' 
        WHEN spa.TableNum = 87 THEN 'CollectingTrip' 
        WHEN spa.TableNum = 92 THEN 'CollectionEventAttribute' 
        WHEN spa.TableNum = 93 THEN 'CollectionObjectAttribute' 
        WHEN spa.TableNum = 111 THEN 'CollObjAttachment' 
        WHEN spa.TableNum = 124 THEN 'LocalityDetail' 
        WHEN spa.TableNum = 153 THEN 'CollectionObjectProperty'
        WHEN spa.TableNum = 500 THEN 'PickList' 
        WHEN spa.TableNum = 501 THEN 'PickListItem' 
        WHEN spa.TableNum = 504 THEN 'SpLocaleContainerItem' 
        WHEN spa.TableNum = 505 THEN 'SpLocaleItemString' 
        WHEN spa.TableNum = 517 THEN 'SpQuery' 
        WHEN spa.TableNum = 518 THEN 'SpQueryField' 
        ELSE '?' 
    END AS TableName
       , spf.FieldName, spf.OldValue, spf.NewValue        
	FROM spauditlog spa
	LEFT JOIN spauditlogfield spf ON spf.SpAuditLogID = spa.SpAuditLogID
	LEFT JOIN agent a ON a.AgentID = spa.CreatedByAgentID 
	WHERE spa.TimestampCreated > SUBTIME(NOW(),"8:00:00")
	  AND spa.CreatedByAgentID IS NOT NULL 
	  GROUP BY a.AgentID -- , spf.FieldName
	ORDER BY spa.TimestampModified DESC
LIMIT 128