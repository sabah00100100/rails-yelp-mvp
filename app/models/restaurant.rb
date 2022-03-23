class Restaurant < ApplicationRecord
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: categories, allow_nil: false }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
end
