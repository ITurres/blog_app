FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    photo { 'https://example.com/photo.jpg' }
    bio { 'A bio for John Doe.' }
    posts_counter { 0 }
  end
end
