require 'ffaker'

FactoryBot.define do
  factory :interaction do
    name { Interaction.names.keys.sample }
    title { FFaker::Lorem.sentence }
    description { FFaker::Book.description }
    association :target, factory: :property
    association :user
  end

  factory :user do
    name { ['project_manager', 'planificator'].sample }
    description { FFaker::Book.description }
  end

  factory :property do
    name { FFaker::NameFR.first_name}
    description { FFaker::Book.description }
    association :concept
  end

  factory :software_concept do
    association :concept
    association :software
  end

  factory :software do
    name { FFaker::Book.name }
    description { FFaker::Book.description }
  end

  factory :concept do
    name { FFaker::Name.name }
    short_text { FFaker::Book.name }
    description { FFaker::Book.description }
  end
end
