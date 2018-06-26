json.extract! user, :id, :name, :email, :password_digest, :icon, :profile, :created_at, :updated_at
json.url user_url(user, format: :json)
