class RentPayment < ApplicationRecord
  belongs_to :user
  belongs_to :unit
  monetize :amount_cents
end
