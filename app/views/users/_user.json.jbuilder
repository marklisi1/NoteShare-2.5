json.extract! user, :id, :name, :email, :password, :usertype, :created_at, :updated_at
json.url user_url(user, format: :json)
