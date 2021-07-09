class Software < ApplicationRecord
  has_many :versions, dependent: :destroy

  validates_length_of :name, maximum: 50, minimum: 1
  validates_length_of :description, maximum: 1000, minimum: 1

  scope :having_online_versions, -> { joins(:versions).where(versions: { online: true }).distinct }

  # Instance metheds
  def online_versions
    versions.where(online: true)
  end
end
