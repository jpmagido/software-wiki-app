class Account < ApplicationRecord
  validates_length_of :name, maximum: 50, minimum: 3
  validates_length_of :email, maximum: 50, minimum: 3
  validates_length_of :password, maximum: 20, minimum: 6

  validate :uniqueness, on: :create

  private

  def uniqueness
    return if Account.count == 0

    raise ActiveRecord::RecordNotUnique
  end
end
