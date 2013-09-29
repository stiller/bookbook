json.array!(@books) do |book|
  json.extract! book, :google_id, :authors, :title, :thumbnail_url
  json.url book_url(book, format: :json)
end
