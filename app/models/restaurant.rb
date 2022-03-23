class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
end
