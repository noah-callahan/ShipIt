class Job < ApplicationRecord
  belongs_to :shipper
  has_many :contracts
  has_many :ships, through: :contracts
  validates :name, presence: true, uniqueness: true
  validates :cost, numericality: { only_integer: true, greater_than: 1000 }
  validates :description, length: { minimum: 50}
end
