-- name: AliasBar :one
SELECT * FROM bar 
WHERE b.id = $p0;
