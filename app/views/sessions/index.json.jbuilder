json.array!(@sessions) do |session|
  json.extract! session, :id, :theme, :resources, :rating, :activities, :comment, :location, :user_id, :date, :closed
  json.url session_url(session, format: :json)
end
