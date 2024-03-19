SELECT DISTINCT c.*
FROM Clients c
JOIN Requests r ON c.id = r.client_id
LEFT JOIN Requests r2 ON r.id = r2.ref_request
WHERE r2.id IS NULL;