require 'ffaker'

FactoryBot.define do
  factory :interaction do
    name { Interaction.names.keys.sample }
    title { FFaker::Lorem.sentence }
    description { FFaker::Book.description }
    association :target, factory: :property
    association :role
  end
end