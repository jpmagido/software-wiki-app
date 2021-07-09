require 'ffaker'

FactoryBot.define do
  factory :version_concept do
    association :concept
    association :version
  end
end