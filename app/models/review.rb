class Review < ApplicationRecord

  NUMBERS = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: NUMBERS }
  validates :rating, numericality: { only_integer: true }
end
