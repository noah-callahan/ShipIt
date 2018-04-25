class Contract < ApplicationRecord
  belongs_to :ship
  belongs_to :job
  validates :job_id, presence: true, length: { in: 0..Job.count }
   
end
