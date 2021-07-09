class Version < ApplicationRecord
  belongs_to :software
  has_many :version_concepts, dependent: :destroy
  has_many :concepts, through: :version_concepts

  validates_length_of :name, maximum: 10, minimum: 1
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :description, maximum: 1000, minimum: 1

  # Instance methods
  def full_name
    "#{software.name} - #{name}"
  end
end
