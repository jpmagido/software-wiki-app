require 'ffaker'

FactoryBot.define do
  factory :software do
    name { FFaker::Book.name }
    description { FFaker::Book.description }
  end
end