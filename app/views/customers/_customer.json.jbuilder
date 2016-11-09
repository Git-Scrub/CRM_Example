json.extract! customer, :id, :full_name, :phone_number, :email_address, :image, :Notes, :created_at, :updated_at
json.url customer_url(customer, format: :json)