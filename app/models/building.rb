class Building < ApplicationRecord
  belongs_to :user
  has_many :units, dependent: :destroy
  has_one_attached :photo

  validates :address, :mortgage, :purchase_price, :purchase_date, presence: true
end
