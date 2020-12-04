class Location < ApplicationRecord
    has_many :students
    has_many :instructors
    has_many :rooms
end
