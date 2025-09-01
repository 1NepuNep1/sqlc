-- name: ListAuthors :many 
SELECT * FROM authors;

-- name: GetAuthor :one
SELECT * FROM authors
WHERE id = $p0;

-- name: GetAuthorsByName :many
SELECT * FROM authors
WHERE name = $p0;

-- name: ListAuthorsWithNullBio :many
SELECT * FROM authors
WHERE bio IS NULL;

-- name: Count :one
SELECT COUNT(*) FROM authors;

-- name: Coalesce :many
SELECT id, name, COALESCE(bio, 'Null value!') FROM authors;

-- name: CreateOrUpdateAuthor :exec 
UPSERT INTO authors (id, name, bio) VALUES ($p0, $p1, $p2);

-- name: CreateOrUpdateAuthorReturningBio :one
UPSERT INTO authors (id, name, bio) VALUES ($p0, $p1, $p2) RETURNING bio;

-- name: DeleteAuthor :exec 
DELETE FROM authors WHERE id = $p0;

-- name: UpdateAuthorByID :queryrows
UPDATE authors SET name = $p0, bio = $p1 WHERE id = $p2 RETURNING *;

-- name: DropTable :exec
DROP TABLE IF EXISTS authors;