module Relationable
  extend ActiveSupport::Concern

  included do
    has_many :relations_to, as: :from, class_name: 'Relation'
    has_many :relations_from, as: :to, class_name: 'Relation'
  end
end