class Pet < ApplicationRecord
  SPECIES = %w[cat dog rabbit]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  # Instance method => returns an integer corresponding to the day between
  # two dates

  # usecase => ex: @pet.found_days_ago
  def found_days_ago
    (Date.today - self.found_on).to_i
  end
end
