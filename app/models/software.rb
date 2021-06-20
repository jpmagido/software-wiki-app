class Software < ApplicationRecord
  has_many :software_concepts, dependent: :destroy
  has_many :concepts, through: :software_concepts

  validates_length_of :name, maximum: 50, minimum: 1
  validates_length_of :description, maximum: 1000, minimum: 1
  validates :online, inclusion: [true, false]

  scope :online, -> { where(online: true) }
end
