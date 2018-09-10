json.extract! customerquote, :id, :name, :date, :amount, :costcenter_id, :created_at, :updated_at
json.url customerquote_url(customerquote, format: :json)
