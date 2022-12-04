# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.first_or_create!(email: 'aboongm@newsappp.com', password: 'password', password_confirmation: 'password', role: "admin")
User.create!(email: 'oybek@newsappp.com', password: 'password', password_confirmation: 'password', role: "admin")
User.create!(email: 'john@doe.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'jane@doe.com', password: 'password', password_confirmation: 'password', role: "author")

# Editor
User.create!(email: 'editor1@newsapp.com', password: 'password', password_confirmation: 'password', role: "editor")
User.create!(email: 'editor2@newsapp.com', password: 'password', password_confirmation: 'password', role: "editor")

# World news journalists
User.create!(email: 'world_news1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'world_news2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'regional1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'regional2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'politics1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'politics2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'city1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'city2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'business1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'business2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'opinion1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'opinion2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'science1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'science2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'health1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'health2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'sports1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'sports2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'arts1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'arts2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'books1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'books2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'style1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'style2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'food1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'food2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'travel1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'travel2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'magazine1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'magazine2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'realestate1@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")
User.create!(email: 'realestate2@newsapp.com', password: 'password', password_confirmation: 'password', role: "author")


Category.first_or_create!(title: 'World')
Category.create!(title: 'Uzbekistan')
Category.create!(title: 'Politics')
Category.create!(title: 'Tashkent')
Category.create!(title: 'Business')
Category.create!(title: 'Opinion')
Category.create!(title: 'Science')
Category.create!(title: 'Health')
Category.create!(title: 'Sports')
Category.create!(title: 'Arts')
Category.create!(title: 'Books')
Category.create!(title: 'Style')
Category.create!(title: 'Food')
Category.create!(title: 'Travel')
Category.create!(title: 'Magazine')
Category.create!(title: 'Real Estate')
Category.create!(title: 'Cooking')

category = Category.all
category.each do |t|
    2.times do |news|
        NewsItem.create!(title: "#{news} News", content: "News body #{news}", category_id: t.id, author_id: 3)
    end
end
