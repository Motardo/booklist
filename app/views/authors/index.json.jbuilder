json.array!(@authors) do |author|
  json.extract! author, :id, :firstName, :lastName
  json.url author_url(author, format: :json)
end
