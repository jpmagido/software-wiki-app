FactoryBot.define do
  factory :software_identity do
    name { FFaker::Book.name }
    description { FFaker::Book.description }
  end
end
