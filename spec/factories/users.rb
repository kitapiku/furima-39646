FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    password_confirmation {password}
    first_name {"田中"}
    last_name {"太郎"}
    first_kananame {"タナカ"}
    last_kananame {"タロウ"}
    birthday {Faker::Date.birthday(min_age: 18, max_age: 100) }
  end
end
