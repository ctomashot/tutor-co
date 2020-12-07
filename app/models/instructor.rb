class Instructor < ApplicationRecord
    has_many :reservations
    has_many :students, through: :reservations
    has_many :rooms, through: :reservations
    belongs_to :location

    validates :name, :bio, :experience, :subject, :location, presence: true
    validates :experience, numericality: { greater_than: 0, less_than: 11} 

    def instructor_subject
        "#{name} - #{subject} - #{price}"
    end

    def self.instructor_of_the_month
        self.all.max_by do |instructor|
            instructor.reservations.size
        end
    end
end
