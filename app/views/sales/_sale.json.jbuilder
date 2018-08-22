json.extract! sale, :id, :total_sales, :order_id, :employee_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
