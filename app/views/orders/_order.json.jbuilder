json.extract! order, :id, :province, :district, :phonenumber, :pay_method, :accept, :user_id, :cart_id, :created_at, :updated_at
json.url order_url(order, format: :json)
