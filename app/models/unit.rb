class Unit < ApplicationRecord
  belongs_to :building
  has_many_attached :photos

  validates :unit_number, :purchase_price, :rent_amount, presence: true
end
