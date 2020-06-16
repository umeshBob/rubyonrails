json.extract! book, :id, :name, :city, :location, :description, :cat1, :cat2, :subcat, :price, :mobile, :email, :created_at, :updated_at
json.url book_url(book, format: :json)
