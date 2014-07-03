json.array!(@attendees) do |attendee|
  json.extract! attendee, :id, :name, :attendance, :comment
  json.url attendee_url(attendee, format: :json)
end
