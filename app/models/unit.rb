class Unit < ApplicationRecord
  belongs_to :building
  has_many_attached :photos
  has_one_attached :lease

  validates :unit_number, :purchase_price, :rent_amount, presence: true
end
