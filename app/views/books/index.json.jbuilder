json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :published, :read_date, :author_id
  json.url book_url(book, format: :json)
end
