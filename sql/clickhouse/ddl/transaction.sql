        CREATE TABLE IF NOT EXISTS transaction
        (
          id UInt32,
          user_id UInt32,
          order_id Nullable(UInt32),
          topup_id Nullable(UInt32),
          type Enum('purchase' = 1, 'topup' = 2),
          amount Decimal(10, 2),
          created_at DateTime DEFAULT now()
        )
        ENGINE = MergeTree()
        ORDER BY id;