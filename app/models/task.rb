class Task < ApplicationRecord
  belongs_to :contractor
  has_many_attached :photos
  has_many_attached :bill_upload

  validates :title, presence: true
  validates :description, presence: true
  validates :urgency, presence: true, inclusion: { in: %w(High Medium Low) }

  def assignee
    # building owner
    # call this with `task.assignee`
    Task.joins(:unit).joins(:building)
  end

  def assigner
    # .unit.users - all users relating to one unit
    # call this with `task.assigner`
    Task.joins(:unit)
  end
end
