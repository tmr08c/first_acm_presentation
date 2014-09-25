json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :class_level
  json.url user_url(user, format: :json)
end
