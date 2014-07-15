json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :identity
  json.url teacher_url(teacher, format: :json)
end
