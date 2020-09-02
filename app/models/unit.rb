class Unit < ApplicationRecord
  belongs_to :building
  belongs_to :user, optional: true
  has_many :tasks
  has_many_attached :photos
  monetize :rent_amount_cents

  validates :unit_number, :purchase_price, :rent_amount_cents, presence: true

  def self.calculate_income(building)
    units = building.units
    all_income_of_building = []
    units.each do |unit|
      income = Unit.where(building: building).sum { |unit| unit.rent_amount }
      all_income_of_building << income
    end
    all_income_of_building.first.to_f
  end

end
