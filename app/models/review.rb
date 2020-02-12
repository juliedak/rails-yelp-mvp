class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates_numericality_of :rating, only_integer: true
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
end
