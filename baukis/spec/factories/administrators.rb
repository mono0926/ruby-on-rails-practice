FactoryGirl.define do
  factory :administrator do
    sequence(:email) { |n| "member#{n}@example.com" }
    password 'pw'
  end
end