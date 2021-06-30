require 'ffaker'

FactoryBot.define do
  factory :user do
    name { ['project_manager', 'planificator'].sample }
    description { FFaker::Book.description }
  end
end