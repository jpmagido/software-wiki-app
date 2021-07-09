require 'ffaker'

FactoryBot.define do
  factory :version do
    sequence(:name) { |n| "v.#{n}" }
    description { FFaker::Book.description }
    association :software
  end
end