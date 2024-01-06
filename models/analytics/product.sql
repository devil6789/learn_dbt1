SELECT product.stock_item_id as product_id
      , product.stock_item_name as product_name
      , coalesce(product.brand, 'Undefined') as brand 
      , product.supplier_id
      ,supplier.supplier_name
      FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` as product
      join `learn-dbt-410122.learn_dbt.supplier` as supplier
      on product.supplier_id = supplier.supplier_id
      