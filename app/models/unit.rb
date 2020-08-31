class Unit < ApplicationRecord
  belongs_to :building
  belongs_to :user, optional: true
  has_many :tasks
  has_many_attached :photos

  validates :unit_number, :purchase_price, :rent_amount, presence: true
end
