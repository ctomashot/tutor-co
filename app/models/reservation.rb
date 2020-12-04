class Reservation < ApplicationRecord
    belongs_to :student
    belongs_to :instructor
    belongs_to :room

    validates :date, :time, :instructor_id, :room_id, presence: true
    validates :date, timeliness: { on_or_after: lambda { Date.current }, type: :date }
  
   validates :time, uniqueness: { scope: [:date, :room_id] }
end
