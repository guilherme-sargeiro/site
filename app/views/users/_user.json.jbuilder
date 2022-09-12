json.extract! user, :id, :id_user, :integer, :nome, :string, :email, :email, :senha, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
