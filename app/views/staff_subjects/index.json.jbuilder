json.array!(@staff_subjects) do |staff_subject|
  json.extract! staff_subject, :id, :staff_id, :subject_id
  json.url staff_subject_url(staff_subject, format: :json)
end
