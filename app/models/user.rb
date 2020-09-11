class User < ApplicationRecord
  has_many :products
  enum kind: [:salesman, :manager]
  enum status: [:active, :inactive]
end
