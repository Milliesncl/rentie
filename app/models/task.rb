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

  def self.calculate_expenses_for_building(building)
    categories = Task.pluck(:category).uniq
    all_expenses_breakdown = []
    categories.each do |category|
      expense_hash = Hash.new
      expense_hash[category] = Task.where(building: building, category: category).sum { |task| task.expense }
      all_expenses_breakdown << expense_hash
    end
    all_expenses_breakdown
  end
end
