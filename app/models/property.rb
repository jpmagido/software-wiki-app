class Property < ApplicationRecord
  belongs_to :concept
  has_many :interactions, as: :target

  validates_length_of :name, maximum: 50, minimum: 1
  validates_length_of :description, maximum: 500, minimum: 1
end
