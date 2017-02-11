json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :middle_name, :last_name, :date_of_birth, :phone, :mobile
  json.url staff_url(staff, format: :json)
end
