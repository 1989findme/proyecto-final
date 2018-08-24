json.extract! photo, :id, :name, :image, :description, :created_at, :updated_at
json.url photo_url(photo, format: :json)
