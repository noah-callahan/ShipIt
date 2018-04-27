class Ship < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :contracts
	has_many :jobs, through: :contracts, dependent: :destroy
  belongs_to :shipper
  validates :name, presence: true, uniqueness: true
end
