json.extract! note, :id, :shared_note_id, :bodycolor_id, :title, :description, :content, :selected, :recycled, :created_at, :updated_at
json.url note_url(note, format: :json)
