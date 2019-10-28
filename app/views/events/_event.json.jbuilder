json.extract! event, :id, :title, :start, :created_at, :updated_at
json.url event_url(event, format: :json)
