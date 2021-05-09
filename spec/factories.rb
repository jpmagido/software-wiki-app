require 'ffaker'

FactoryBot.define do
  factory :software_concept do
    concept { nil }
    software { nil }
  end

  factory :software do
    name { "MyString" }
    description { "MyText" }
  end

  factory :concept do
    name { FFaker::Name.name }
    short_text { FFaker::Book.name }
    description { FFaker::Name.description }
  end
end
