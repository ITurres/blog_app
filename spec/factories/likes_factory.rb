FactoryBot.define do
  factory :like do
    association :post
    association :user

    # ? Build associated objects automatically
    after(:build) do |like|
      like.post.save!
      like.user.save!
    end
  end
end
