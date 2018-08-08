class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, :restaurant, presence: true
  validates :rating, numericality: :integer, allow_blank: false
  validates :rating, inclusion: {in: [0,1,2,3,4,5] }
end
