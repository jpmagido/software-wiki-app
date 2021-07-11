require 'ffaker'

FactoryBot.define do
  factory :software do
    online { [true, false].sample}
    association :software_identity
  end
end
