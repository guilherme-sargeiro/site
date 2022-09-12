json.extract! register, :id, :id_user, :nome, :email, :senha, :created_at, :updated_at
json.url register_url(register, format: :json)
