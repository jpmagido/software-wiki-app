class Concept < ApplicationRecord
  include Relationable
  
  has_many :software_concepts, dependent: :destroy
  has_many :softwares, through: :software_concepts
  has_many :properties, dependent: :destroy
  has_many :interactions, as: :target

  validates_length_of :name, maximum: 50, minimum: 3
  validates_length_of :description, maximum: 1000, minimum: 1
  validates_length_of :short_text, maximum: 1000, minimum: 1
end
