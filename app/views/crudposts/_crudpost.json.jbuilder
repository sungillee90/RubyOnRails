json.extract! crudpost, :id, :description, :title, :created_at, :updated_at
json.url crudpost_url(crudpost, format: :json)
