json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :type, :teg_id, :date_event, :hour_start, :hour_finish, :address, :latitude, :longitude, :user_id
  json.url event_url(event, format: :json)
end
