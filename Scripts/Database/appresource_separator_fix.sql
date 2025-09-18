UPDATE spappresourcedata spard
SET spard.data = REPLACE(spard.data, 'separator=""', 'separator="; "')
WHERE spard.SpAppResourceID IN (
    SELECT spar.SpAppResourceID
    FROM spappresource spar
    WHERE spar.Name = 'DataObjFormatters'
);