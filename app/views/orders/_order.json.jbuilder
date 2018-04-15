json.extract! order, :id, :name, :sub_total, :total_amount, :tax, :order_date, :created_at, :updated_at
json.url order_url(order, format: :json)
