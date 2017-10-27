json.extract! book, :id, :title, :author, :category, :pages, :publisher, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
