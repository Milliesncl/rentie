class Contractor < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :speciality, presence: true, inclusion: { in: %w(Roofer Electrician Plumber Other) }
end
