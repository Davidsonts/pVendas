class ProductSale < ApplicationRecord
  belongs_to :product
  belongs_to :sale
  belongs_to :user
end
