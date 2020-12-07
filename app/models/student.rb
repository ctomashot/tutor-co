class Student < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :instructors, through: :reservations
    has_many :rooms, through: :reservations
    belongs_to :location

    validates :name, :grade, :location, :username, :password, presence: true
    validates :username, uniqueness: true
  

end
