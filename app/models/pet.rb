class Pet < ApplicationRecord
  SPECIES = %w[dog cat bird goldfish rabbit dinosaur squirrel tiger]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
