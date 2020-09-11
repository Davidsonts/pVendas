class Client < ApplicationRecord
  has_many :sales
  enum status: [:active, :inactive]
end
