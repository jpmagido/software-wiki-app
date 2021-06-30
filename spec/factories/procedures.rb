FactoryBot.define do
  factory :procedure do
    name { FFaker::Book.name }
    description { FFaker::Book.description }
    actions { FFaker::Book.description }
    association :interaction
  end
end
