# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Like.delete_all
PublicationHashtag.delete_all
Follower.delete_all
Publication.delete_all
Hashtag.delete_all
User.delete_all
Comment.delete_all

users = [
    User.create!(name: "Alicia", password: "alicia123", mail: "alicia@gmail.com", username: "alicia1415", sex: 'F', date_create: Date.today, user_image: "alicia.png"),
    User.create!(name: "Jorge", password: "jorge123", mail: "jorge@gmail.com", username: "jorge2022", sex: 'M', date_create: Date.today, user_image: "jorge.png"),
    User.create!(name: "Andres", password: "andres123", mail: "andres@gmail.com", username: "andres0403",sex: 'M', date_create: Date.today, user_image: "andres.png")
]

publications = [
Publication.create!(data_create: Date.today, publication_image: "publication_image1.png", description: "description1", user: users[0]),
Publication.create!(data_create: Date.today, publication_image: "publication_image2.png", description: "description2", user: users[1])
]

Follower.create!(user: users[0], user2: users[1].id, date_followers: Date.today)
Follower.create!(user: users[1], user2: users[2].id, date_followers: Date.today)
Follower.create!(user: users[0], user2: users[2].id, date_followers: Date.today)

hashtags = [
    Hashtag.create!(name:"#publication"),
    Hashtag.create!(name:"#image"),
    Hashtag.create!(name:"#follow")
]
PublicationHashtag.create!(publication: publications[0], hashtag: hashtags[0])
PublicationHashtag.create!(publication: publications[1], hashtag: hashtags[2])


Like.create!(date_create: Date.today, user: users[0], publication: publications[1])
Like.create!(date_create: Date.today, user: users[2], publication: publications[1])
Like.create!(date_create: Date.today, user: users[1], publication: publications[0])
Like.create!(date_create: Date.today, user: users[2], publication: publications[0])


Comment.create!(date_create: Date.today, content: "contenido1", actualization_date: Date.today, user: users[1], publication: publications[0])
Comment.create!(date_create: Date.today, content: "contenido2", actualization_date: Date.today, user: users[2], publication: publications[0])
Comment.create!(date_create: Date.today, content: "contenido3", actualization_date: Date.today, user: users[0], publication: publications[0])
Comment.create!(date_create: Date.today, content: "contenido4", actualization_date: Date.today, user: users[2], publication: publications[1])
