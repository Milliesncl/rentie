class Building < ApplicationRecord
  belongs_to :user
  has_many :units, dependent: :destroy

  validates :address, :mortgage, :purchase_price, :purchase_date , presence: true
end
