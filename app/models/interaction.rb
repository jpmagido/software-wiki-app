class Interaction < ApplicationRecord
  enum name: { to_create: 0, to_delete: 1, to_edit: 2, to_import: 3, to_export: 4 }

  belongs_to :target, polymorphic: true
  belongs_to :role

  validates_length_of :title, maximum: 100, minimum: 1
  validates_length_of :description, maximum: 1000, minimum: 1
end
