class Product < ApplicationRecord
  validates :code, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true

  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
