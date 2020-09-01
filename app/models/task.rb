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
      expense_hash[category] = Task.where(building: building, category: category).sum { |task| task.expense.to_i }
      all_expenses_breakdown << expense_hash
    end
    all_expenses_breakdown
  end

  # need to finish this
  def self.calculate_expenses_for_unit(unit)
    categories = Task.pluck(:category).uniq
    all_expenses_unit_breakdown = []
    categories.each do |category|
      expense_hash = Hash.new
      expense_hash[category] = Task.where(building: building, category: category).sum { |task| task.expense.to_i }
      all_expenses_breakdown << expense_hash
    end
    all_expenses_breakdown
  end

  def self.calculate_overall_expenses_for_building(building)
    mortgage_building = building.mortgage
    categories = Task.pluck(:category).uniq
    all_overall_expenses_breakdown = []
    categories.each do |category|
      expense_hash = Hash.new
      expense_hash = Task.where(building: building).sum { |task| task.expense.to_i }
      all_overall_expenses_breakdown << expense_hash + mortgage_building
    end
    all_overall_expenses_breakdown.first
  end

  # [['plumbing', 'Electricity'], [0,3,4]]
  def self.calculate_expenses_array_for_building(building)
    categories = Task.pluck(:category).uniq
    all_expenses_array_breakdown = []
    all_expenses_array_breakdown << categories
    all_expenses_array = []
    categories.each do |category|
      all_expenses_array << Task.where(building: building, category: category).sum { |task| task.expense.to_i }
    end
    all_expenses_array_breakdown << all_expenses_array
    all_expenses_array_breakdown
  end

  def self.all_buildings_expenses
    categories = Task.pluck(:category).uniq
    overall_expenses_array_breakdown = []
    overall_expenses_array_breakdown << categories
    overall_expenses_array = []
    categories.each do |category|
      # next if category.expense.nil?
      overall_expenses_array << Task.where(category: category).sum { |task| task.expense.to_i }
    end
    overall_expenses_array_breakdown << overall_expenses_array
    overall_expenses_array_breakdown
  end
end
