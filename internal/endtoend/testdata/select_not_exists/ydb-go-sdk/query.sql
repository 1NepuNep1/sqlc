-- name: BarNotExists :one
SELECT
    NOT EXISTS (
        SELECT
            1
        FROM
            bar
        where
            id = $id
    );

-- name: BarExists :one
SELECT
    EXISTS (
        SELECT
            1
        FROM
            bar
        where
            id = $id
    );
