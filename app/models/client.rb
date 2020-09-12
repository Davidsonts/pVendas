class Client < ApplicationRecord
  has_many :sales
  enum status: [:active, :inactive]
  scope :clients_active, ->() { where(status: 0)}
end
