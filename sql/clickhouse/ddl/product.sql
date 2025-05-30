CREATE
OR REPLACE TABLE product (
    id UInt32,
    name String,
    description String,
    price Decimal(10, 2),
    stock Int32 DEFAULT 0,
    category_id UInt32,
    is_deleted UInt8 DEFAULT 0,
    deleted_at DateTime,
    created_at DateTime DEFAULT now(),
    updated_at DateTime DEFAULT now()
) ENGINE = MergeTree()
ORDER BY
    id;