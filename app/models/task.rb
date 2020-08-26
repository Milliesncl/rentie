class Task < ApplicationRecord
  belongs_to :contractor

  validates :title, presence: true
  validates :description, presence: true
  validates :urgency, presence: true


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
