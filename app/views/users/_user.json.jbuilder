json.extract! user, :id, :username, :password, :email, :log_in_with_google, :profile_picture, :created_at, :updated_at
json.url user_url(user, format: :json)
