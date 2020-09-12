class Product < ApplicationRecord
  belongs_to :user
  enum status: [:active, :inactive]
  scope :products_active, -> {where(:status => 0)}
end
