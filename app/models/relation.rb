class Relation < ApplicationRecord
  belongs_to :from, polymorphic: true
  belongs_to :to, polymorphic: true
end
