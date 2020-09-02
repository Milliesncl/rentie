class RentPayment < ApplicationRecord
  belongs_to :user
  monetize :amount_cents
end
