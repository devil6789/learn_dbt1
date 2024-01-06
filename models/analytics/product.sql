SELECT stock_item_id as product_id
      , stock_item_name as product_name
      , coalesce(brand, 'Undefined') as brand 
      , supplier_id
      FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` 