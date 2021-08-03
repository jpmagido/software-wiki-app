require 'ffaker'

FactoryBot.define do
  factory :software do
    online { [true, false].sample }
    version { '1.1' }
    association :software_identity
  end
end
