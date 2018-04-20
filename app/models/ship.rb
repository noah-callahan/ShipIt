class Ship < ApplicationRecord
  has_many :contracts
	has_many :jobs, through: :contracts
  belongs_to :shipper
end
