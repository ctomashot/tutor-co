class Room < ApplicationRecord
    belongs_to :location
    has_many :reservations
    has_many :students, through: :reservations
    has_many :instructors, through: :reservations

    
end
