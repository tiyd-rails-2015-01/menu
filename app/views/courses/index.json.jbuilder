json.array!(@courses) do |course|
  json.extract! course, :id, :name
  json.url exercise_url(course, format: :json)
end
