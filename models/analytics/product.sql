SELECT product.stock_item_id as product_id,
product.stock_item_name as product_name,
coalesce(product.brand,'Undefined') as branch_name,
product.supplier_id,
supplier.supplier_name
FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` AS product
JOIN {{ ref('supplier') }} AS supplier
ON product.supplier_id = supplier.supplier_id