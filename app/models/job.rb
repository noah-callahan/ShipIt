class Job < ApplicationRecord
  belongs_to :shipper
  has_many :contracts
	has_many :ships, through: :contracts
end
