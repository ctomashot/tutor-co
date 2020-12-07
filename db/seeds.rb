# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Instructor.destroy_all
Room.destroy_all
Reservation.destroy_all

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




cole = Instructor.create(name: "Cole", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 3, subject: "Algebra", location_id: chicago.id)
derick = Instructor.create(name: "Derick", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 6, subject: "Computer Science", location_id: rockford.id)
max = Instructor.create(name: "Max", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: chicago.id)
rik = Instructor.create(name: "Rik", bio: "I am from LA and moved to Skokie 43 years ago! I love science!", experience: 10, subject: "English", location_id: skokie.id)
dan = Instructor.create(name: "Daniel", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: peoria.id)
mike = Instructor.create(name: "Mike", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: elgin.id)
bob = Instructor.create(name: "Bob", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: naperville.id)
nemo = Instructor.create(name: "Nemo", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: joliet.id)
dori = Instructor.create(name: "Dori", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: schaumberg.id)
zach = Instructor.create(name: "Zach", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: evanston.id)
liz = Instructor.create(name: "Liz", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: bolingbrook.id)
tom = Instructor.create(name: "Tom", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: downers_grove.id)
mason = Instructor.create(name: "Mason", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: glenview.id)
dena = Instructor.create(name: "Dena", bio: "I am from Ohio and moved to chicago 3 years ago! I love science!", experience: 10, subject: "History", location_id: northbrook.id)



first_room = Room.create(number: 1, location_id: chicago.id)
second_room = Room.create(number: 2, location_id: chicago.id)
third_room = Room.create(number: 3, location_id: chicago.id)
fourth_room = Room.create(number: 4, location_id: chicago.id)




reservation1 = Reservation.create(date: "December 3rd 2020", time: 7, student_id: dena.id, instructor_id: cole.id, room_id: first_room.id)
reservation2 = Reservation.create(date: "August 3rd 2020", time: 7, student_id: dena.id, instructor_id: cole.id, room_id: first_room.id)


