class Task < ApplicationRecord
  belongs_to :contractor, optional: true
  belongs_to :unit, optional: true
  belongs_to :building
  has_many_attached :photos
  has_many_attached :bill_upload

  validates :title, presence: true
  validates :description, presence: true
  validates :urgency, presence: true, inclusion: { in: %w(High Medium Low) }
  validates :category, presence: true, inclusion: { in: %w(Renovation Hydro Electricity Plumbing Furniture Other) }

  def self.assignee
    # building owner
    Task.joins(:unit).joins(:building)
  end

  def self.assigner
    # .unit.users - all users relating to one unit
    Task.joins(:unit)
  end
end
