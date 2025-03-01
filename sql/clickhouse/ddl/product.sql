        CREATE TABLE IF NOT EXISTS product
            (
                id UInt32,
                name String,
                description Nullable(String),
                price Decimal(10, 2),
                stock Int32 DEFAULT 0,
                category_id Nullable(Int32),
                is_deleted UInt8 DEFAULT 0,
                deleted_at Date DEFAULT toDate('1970-01-01'),
                created_at DateTime DEFAULT now(),
                updated_at DateTime DEFAULT now()
            )
            ENGINE = MergeTree()
            ORDER BY id;