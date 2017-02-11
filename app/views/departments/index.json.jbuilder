json.array!(@departments) do |department|
  json.extract! department, :id, :name, :section
  json.url department_url(department, format: :json)
end
