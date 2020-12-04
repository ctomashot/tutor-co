# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


chicago = Location.create(name: "Chicago")
peoria = Location.create(name: "Peoria")
rockford = Location.create(name: "Rockford")
elgin = Location.create(name: "Elgin")
naperville = Location.create(name: "Naperville")
joliet = Location.create(name: "Joliet")
schaumberg = Location.create(name: "Schaumberg")
evanston = Location.create(name: "Evanston")
bolingbrook = Location.create(name: "Bolingbrook")
skokie = Location.create(name: "Skokie")
downers_grove = Location.create(name: "Downers Grove")
glenview = Location.create(name: "Glenview")
northbrook = Location.create(name: "Northbrook")



dena = Student.create(name: "Dena", grade: "College Sophomore", location_id: chicago.id)

cole = Instructor.create(name: "Cole", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 3, subject: "Algebra", location_id: chicago.id)
derick = Instructor.create(name: "Derick", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 6, subject: "Computer Science", location_id: chicago.id)
max = Instructor.create(name: "Max", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: chicago.id)

first_room = Room.create(number: 1, location_id: chicago.id)

reservation1 = Reservation.create(date: "December 3rd 2020", time: 7, student_id: dena.id, instructor_id: cole.id, room_id: first_room.id)
reservation2 = Reservation.create(date: "August 3rd 2020", time: 7, student_id: dena.id, instructor_id: cole.id, room_id: first_room.id)


