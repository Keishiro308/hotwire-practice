class Cat < ApplicationRecord
  validates :name, presence: true

  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.ransackable_attributes(_auth_object = nil)
    %w[id name age]
  end
end
