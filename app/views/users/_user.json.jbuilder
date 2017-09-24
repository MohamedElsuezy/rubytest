json.extract! user, :id, :name, :group, :created_at, :updated_at
json.url user_url(user, format: :json)
