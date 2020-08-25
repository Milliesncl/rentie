class Building < ApplicationRecord
  belongs_to :user
  has_many :units, dependent: :destroy
end
