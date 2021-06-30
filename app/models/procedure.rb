class Procedure < ApplicationRecord
  belongs_to :interaction

  validates_length_of :name, maximum: 100, minimum: 1
  validates_length_of :description, maximum: 1000, minimum: 1
  validates_length_of :actions, maximum: 1000, minimum: 1
end
