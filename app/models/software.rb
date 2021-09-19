class Software < ApplicationRecord
  belongs_to :software_identity
  has_many :software_concepts, dependent: :destroy
  has_many :concepts, through: :software_concepts

  validates :online, inclusion: [true, false]
  validates_with Validators::VersionValidator

  scope :online, -> { where(online: true) }
  scope :version_duplicates, ->(software) { where(version: software.version, software_identity: software.software_identity) - [software] }

  def name
    software_identity.name
  end

  def description
    software_identity.description
  end
end
