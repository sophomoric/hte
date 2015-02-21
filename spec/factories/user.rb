FactoryGirl.define do
  factory :user do
    email "bob@dole.com"
    password "12345678"
    first_name "Bob"
    last_name  "Dole"
  end

  factory :admin do
    after(:create) { |user| user.add_role(:admin) }
  end

  factory :super_admin do
    after(:create) { |user| user.add_role(:super_admin) }
  end
end
