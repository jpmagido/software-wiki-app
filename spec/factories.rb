require 'ffaker'

FactoryBot.define do
  factory :concept do
    name { FFaker::Name.name }
    short_text { FFaker::Book.name }
    description { FFaker::Name.description }
  end
end
