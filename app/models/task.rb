class Task < ApplicationRecord
  belongs_to :contractor

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
