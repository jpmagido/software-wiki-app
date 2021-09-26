require 'ffaker'

FactoryBot.define do
  factory :relation do
    name { FFaker::Name.name }
    description { FFaker::Lorem.paragraph }
    association :from, factory: :property
    association :to, factory: :concept
  end
end
