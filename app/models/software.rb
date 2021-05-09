class Software < ApplicationRecord
  has_many :software_concepts
  has_many :concepts, through: :software_concepts
end
