class Student < ApplicationRecord
    has_many :reservations
    has_many :instructors, through: :reservations
    has_many :rooms, through: :reservations
    belongs_to :location


    validates :name, :grade, :location, presence: true



end
