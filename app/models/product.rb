class Product < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :quantity, presence: true

  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
