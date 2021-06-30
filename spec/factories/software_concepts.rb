require 'ffaker'

FactoryBot.define do
  factory :software_concept do
    association :concept
    association :software
  end
end