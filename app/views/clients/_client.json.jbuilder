json.extract! client, :id, :name, :client_group, :ruc, :pais, :direccion_postal, :activation_date, :created_at, :updated_at
json.url client_url(client, format: :json)
