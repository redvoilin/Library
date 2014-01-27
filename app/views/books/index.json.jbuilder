json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :country, :translator, :publisher, :ISBN, :number, :price, :rec_date, :info
  json.url book_url(book, format: :json)
end
