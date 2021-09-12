require 'ffaker'

FactoryBot.define do
  factory :value do
    text { FFaker::Book.name }
    description { FFaker::Book.description }
    association :property
  end
end
