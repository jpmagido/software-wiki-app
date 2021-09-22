class Relation < ApplicationRecord
  belongs_to :obj_1, polymorphic: true
  belongs_to :obj_2, polymorphic: true
end
