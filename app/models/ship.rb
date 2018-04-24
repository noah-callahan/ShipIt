class Ship < ApplicationRecord
  has_many :contracts
	has_many :jobs, through: :contracts
  belongs_to :shipper
  validates :name, presence: true, uniqueness: true
end
