class Interaction < ApplicationRecord
  enum name: { to_create: 0, to_delete: 1, to_edit: 2, to_import: 3, to_export: 4 }

  belongs_to :target, polymorphic: true
  belongs_to :user
end
