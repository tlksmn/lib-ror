json.extract! author, :id, :full_name, :created_at, :updated_at
json.url author_url(author, format: :json)
