FactoryBot.define do
  factory :item do
    name                   { Faker::Lorem.word }
    explanation            { Faker::Lorem.sentence }
    category_id            { rand(2..11) }
    price                  { rand(300..9_999_999) }
    shipping_fee_status_id { rand(2..3) }
    prefecture_id          { rand(2..48) }
    schedule_id            { rand(2..4) }
    sales_status_id        { rand(2..7) }
    sold                   { false }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/image/img_rajang01_l.png'), filename: 'img_rajang01_l.png')
    end
  end
end
