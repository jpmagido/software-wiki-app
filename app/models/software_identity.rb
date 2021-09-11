class SoftwareIdentity < ApplicationRecord
  validates_length_of :name, maximum: 50, minimum: 1
  validates_length_of :description, maximum: 1000, minimum: 1

  has_many :softwares

  def version_count
    softwares.count
  end
end
