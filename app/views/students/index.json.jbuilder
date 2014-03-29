json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :male, :image, :mentor, :user_id, :dob
  json.url student_url(student, format: :json)
end
