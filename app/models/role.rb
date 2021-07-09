class Role < ApplicationRecord
  has_many :interactions, dependent: :destroy
end
