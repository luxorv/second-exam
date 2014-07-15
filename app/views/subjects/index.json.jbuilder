json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :identity, :active, :teacher_id
  json.url subject_url(subject, format: :json)
end
