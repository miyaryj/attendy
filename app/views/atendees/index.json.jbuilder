json.array!(@atendees) do |atendee|
  json.extract! atendee, :id, :name, :attendance, :comment
  json.url atendee_url(atendee, format: :json)
end
