class Value < ApplicationRecord
  # Associations
  belongs_to :property

  # Validations
  validates_length_of :text, minimum: 3, maximum: 50
  validates_length_of :description, minimum: 1, maximum: 1000
end
