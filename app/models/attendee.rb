class Attendee < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  validates :attendance,  presence: true, length: { maximum: 10 }
  validates :comment,  presence: true, length: { maximum: 500 }
end
