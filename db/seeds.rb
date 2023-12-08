# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ? Create 10 random users.
10.times do
  user = User.create(
    name: Faker::Name.unique.name,
    photo: Faker::Internet.url,
    bio: Faker::Lorem.sentence
  )

  # ? Create 5 random posts for each user.
  5.times do
    new_post = Post.create(
      author: user,
      title: Faker::Lorem.sentence,
      text: Faker::Lorem.paragraph
    )

    # ? Create 3 random comments for each post.
    6.times do
      Comment.create(
        post: new_post,
        author: User.all.sample,
        text: Faker::Lorem.sentence
      )
    end
  end
end
