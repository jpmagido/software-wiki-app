require 'ffaker'

FactoryBot.define do
  factory :value do
    property { nil }
    text { FFaker::Lorem.sentence }
    description { FFaker::Lorem.paragraph(sentence_count: 7) }
    association :property
  end
end
