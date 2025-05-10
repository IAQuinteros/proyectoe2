# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Comment.delete_all
Like.delete_all
PublicationHashtag.delete_all
Follower.delete_all
Publication.delete_all
Hashtag.delete_all
User.delete_all

users = [
    User.create!(name: "Alicia", password: "alicia123", mail: "alicia@gmail.com", username: "alicia1415", sex: 'F', date_create: Date.today, user_image: "alicia.png"),
    User.create!(name: "Jorge", password: "jorge123", mail: "jorge@gmail.com", username: "jorge2022", sex: 'M', date_create: Date.today, user_image: "jorge.png"),
    User.create!(name: "Andres", password: "andres123", mail: "andres@gmail.com", username: "andres0403",sex: 'M', date_create: Date.today, user_image: "andres.png")
]
publications = [
    Publication.create!(date_create: Date.today, publication_image: "publication_image1.png", description: "description1", users: users[0]),
    Publication.create!(date_create: Date.today, publication_image: "publication_image2.png", description: "description2", users: users[1])
]

Follower.create!(users: users[0], users2: users[1].id, date_followers: Date.today)
Follower.create!(users: users[1], users2: users[2].id, date_followers: Date.today)
Follower.create!(users: users[0], users2: users[2].id, date_followers: Date.today)

hashtags = [
    Hashtag.create!(name:"#publication"),
    Hashtag.create!(name:"#image"),
    Hashtag.create!(name:"#follow")
]
PublicationHashtag.create!(publication_id: publications[0], hashtag_id: hashtags[0])
PublicationHashtag.create!(publication_id: publications[1], hashtag_id: hashtags[2])


Like.create!(date_create: Date.today, users: users[0], publication_id: publications[1])
Like.create!(date_create: Date.today, users: users[2], publication_id: publications[1])
Like.create!(date_create: Date.today, users: users[1], publication_id: publications[0])
Like.create!(date_create: Date.today, users: users[2], publication_id: publications[0])


Comment.create!(date_create: Date.today, content: "contenido1", actualization_date: Date.today, users: users[1], publication_id: publications[0])
Comment.create!(date_create: Date.today, content: "contenido2", actualization_date: Date.today, users: users[2], publication_id: publications[0])
Comment.create!(date_create: Date.today, content: "contenido3", actualization_date: Date.today, users: users[0], publication_id: publications[0])
Comment.create!(date_create: Date.today, content: "contenido4", actualization_date: Date.today, users: users[2], publication_id: publications[1])
