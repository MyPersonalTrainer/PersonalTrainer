json.array!(@users) do |user|
  json.extract! user, :id, :gender, :age, :weight, :height, :experience, :activity, :physical_level, :complexity, :training_type, :stature, :blood_pressure
  json.url user_url(user, format: :json)
end
