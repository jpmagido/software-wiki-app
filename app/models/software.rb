class Software < ApplicationRecord
  belongs_to :software_identity
  has_many :software_concepts, dependent: :destroy
  has_many :concepts, through: :software_concepts

  validates :online, inclusion: [true, false]

  scope :online, -> { where(online: true) }

  def name
    software_identity.name
  end

  def description
    software_identity.description
  end
end
