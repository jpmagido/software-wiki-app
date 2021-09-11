require 'ffaker'

FactoryBot.define do
  factory :value do
    text { FFaker::Lorem.sentence }
    description { FFaker::Lorem.sentences.join }
    association :property
  end
end
