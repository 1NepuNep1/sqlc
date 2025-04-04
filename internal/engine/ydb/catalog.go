package ydb

import "github.com/sqlc-dev/sqlc/internal/sql/catalog"

func NewTestCatalog() *catalog.Catalog {
	return catalog.New("main")
}
