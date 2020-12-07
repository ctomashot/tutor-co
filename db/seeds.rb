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




cole = Instructor.create(name: "Cole", bio: "I love science!", experience: 3, subject: "Physics", location_id: chicago.id, price: "$20.00")
derick = Instructor.create(name: "Derick", bio: "I love coding!", experience: 6, subject: "Computer Science", location_id: chicago.id, price: "$30.00")
max = Instructor.create(name: "Max", bio: "I love history!", experience: 10, subject: "History", location_id: chicago.id, price: "$25.00")
dena = Instructor.create(name: "Dena", bio: "I love math!", experience: 5, subject: "Algebra", location_id: chicago.id, price: "$25.00")
finn = Instructor.create(name: "Finn", bio: "I love science!", experience: 1, subject: "Biology", location_id: elgin.id, price: "$30.00")
ben = Instructor.create(name: "Ben", bio: "I love Spanish!", experience: 2, subject: "Spanish", location_id: chicago.id, price: "$30.00")
jordan = Instructor.create(name: "Jordan", bio: "I love French!", experience: 4, subject: "French", location_id: chicago.id, price: "$20.00")
eddie = Instructor.create(name: "Eddie", bio: "I love math!", experience: 7, subject: "Geometry", location_id: chicago.id, price: "$25.00")
lucas = Instructor.create(name: "Lucas", bio: "I love math!", experience: 3, subject: "Trigonometry", location_id: evanston.id, price: "$20.00")
kim = Instructor.create(name: "Kim", bio: "I love math!", experience: 2, subject: "Algebra", location_id: chicago.id, price: "$20.00")
nicolas = Instructor.create(name: "Nicolas", bio: "I love science!", experience: 6, subject: "Chemistry", location_id: chicago.id, price: "$25.00")
pierre = Instructor.create(name: "Pierre", bio: "I love science!", experience: 8, subject: "Biology", location_id: chicago.id, price: "$30.00")
emile = Instructor.create(name: "Emile", bio: "I love Italian!", experience: 9, subject: "Italian", location_id: chicago.id, price: "$30.00")
billy = Instructor.create(name: "Billy", bio: "I love coding!", experience: 2, subject: "Computer Science", location_id: downers_grove.id, price: "$20.00")
emily = Instructor.create(name: "Emily", bio: "I love science!", experience: 1, subject: "Physics", location_id: skokie.id, price: "$20.00")
thomas = Instructor.create(name: "Thomas", bio: "I love math!", experience: 4, subject: "Geometry", location_id: bolingbrook.id, price: "$30.00")
ana = Instructor.create(name: "Ana", bio: "I love science!", experience: 8, subject: "Chemistry", location_id: evanston.id, price: "$25.00")
mohamed = Instructor.create(name: "Max", bio: "I love coding!", experience: 10, subject: "Computer Science", location_id: schaumberg.id, price: "$25.00")
pablo = Instructor.create(name: "Pablo", bio: "I love history!", experience: 1, subject: "History", location_id: joliet.id, price: "$25.00")
alyssa = Instructor.create(name: "Alyssa", bio: "I love language arts!", experience: 6, subject: "Language Arts", location_id: naperville.id, price: "$30.00")
sead = Instructor.create(name: "Sead", bio: "I love science!", experience: 4, subject: "Physics", location_id: elgin.id, price: "$20.00")
rob = Instructor.create(name: "Rob", bio: "I love math!", experience: 8, subject: "Algebra", location_id: rockford.id, price: "$20.00")
gabriel = Instructor.create(name: "Gabriel", bio: "I love coding!", experience: 10, subject: "Computer Science", location_id: peoria.id, price: "$25.00")
william = Instructor.create(name: "William", bio: "I love language arts!", experience: 10, subject: "Language Arts", location_id: peoria.id, price: "$25.00")
kieran = Instructor.create(name: "Kieran", bio: "I love history!", experience: 3, subject: "History", location_id: peoria.id, price: "$30.00")
hector = Instructor.create(name: "Hector", bio: "I love science!", experience: 4, subject: "Chemistry", location_id: rockford.id, price: "$25.00")
abby = Instructor.create(name: "Abby", bio: "I love math!", experience: 2, subject: "Trigonometry", location_id: rockford.id, price: "$20.00")
dan = Instructor.create(name: "Dan", bio: "I love Spanish!", experience: 5, subject: "Spanish", location_id: elgin.id, price: "$20.00")
kate = Instructor.create(name: "Kate", bio: "I love French!", experience: 6, subject: "French", location_id: elgin.id, price: "$20.00")
jim = Instructor.create(name: "Jim", bio: "I love history!", experience: 3, subject: "History", location_id: naperville.id, price: "$25.00")
jane = Instructor.create(name: "Jane", bio: "I love math!", experience: 3, subject: "Algebra", location_id: naperville.id, price: "$25.00")
matt = Instructor.create(name: "Matt", bio: "I love coding!", experience: 2, subject: "Computer Science", location_id: joliet.id, price: "$25.00")
ann = Instructor.create(name: "Ann", bio: "I love science!", experience: 2, subject: "Algebra", location_id: joliet.id, price: "$30.00")
alec = Instructor.create(name: "Alec", bio: "I love math!", experience: 1, subject: "Geometry", location_id: schaumberg.id, price: "$30.00")
alex = Instructor.create(name: "Alex", bio: "I love language arts!", experience: 6, subject: "Language Arts", location_id: schaumberg.id, price: "$30.00")
joe = Instructor.create(name: "Joe", bio: "I love history!", experience: 9, subject: "History", location_id: evanston.id, price: "$20.00")
jen = Instructor.create(name: "Jen", bio: "I love math!", experience: 10, subject: "Algebra", location_id: evanston.id, price: "$20.00")
carol = Instructor.create(name: "Carol", bio: "I love Italian!", experience: 4, subject: "Italian", location_id: bolingbrook.id, price: "$20.00")
david = Instructor.create(name: "David", bio: "I love coding!", experience: 5, subject: "Computer Science", location_id: bolingbrook.id, price: "$20.00")
nick = Instructor.create(name: "Nick", bio: "I love math!", experience: 3, subject: "Trigonometry", location_id: skokie.id, price: "$20.00")
rick = Instructor.create(name: "Rick", bio: "I love science!", experience: 6, subject: "Chemistry", location_id: skokie.id, price: "$20.00")
leah = Instructor.create(name: "Leah", bio: "I love science!", experience: 8, subject: "Biology", location_id: downers_grove.id, price: "$25.00")
beth = Instructor.create(name: "beth", bio: "I love coding!", experience: 2, subject: "Computer Science", location_id: downers_grove.id, price: "$25.00")
lisa = Instructor.create(name: "Lisa", bio: "I love math!", experience: 4, subject: "Algebra", location_id: glenview.id, price: "$20.00")
joel = Instructor.create(name: "Joel", bio: "I love Italian!", experience: 5, subject: "Italian", location_id: glenview.id, price: "$20.00")
jill = Instructor.create(name: "Jill", bio: "I love science!", experience: 3, subject: "Physics", location_id: northbrook.id, price: "$25.00")
mikel = Instructor.create(name: "Mikel", bio: "I love history!", experience: 6, subject: "History", location_id: northbrook.id, price: "$30.00")


first_room = Room.create(number: 1, location_id: chicago.id)
second_room = Room.create(number: 2, location_id: chicago.id)
third_room = Room.create(number: 3, location_id: chicago.id)
fourth_room = Room.create(number: 4, location_id: chicago.id)


