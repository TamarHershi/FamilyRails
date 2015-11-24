# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_moms = [
  {name: "Lucy", age: 42, job: "accountant"},
  {name: "Emma", age: 32, job: "actor"},
  {name: "Abigail", age: 36, job: "chemist"},
  {name: "Anne", age: 25, job: "city planner"},
  {name: "Claire", age: 27, job: "engineer"},
  {name: "Dior", age: 20, job: "dancer"},
  {name: "Fiona", age: 39, job: "doctor"},
  {name: "Hope", age: 46, job: "dog trainer"},
  {name: "Jill", age: 53, job: "FBI agent"},
  {name: "Jody", age: 47, job: "farmer"},
]

seed_moms.each do |mom|
  Mom.create(mom)
end


seed_children = [
  {name: "Michelle", gender: "female", age: 6},
  {name: "Jodie", gender: "female", age: 2},
  {name: "Kaitlin", gender: "female", age: 7},
  {name: "Lena", gender: "female", age: 4},
  {name: "Joan", gender: "female", age: 12},
  {name: "Kylie", gender: "female", age: 14},
  {name: "Lacy", gender: "female", age: 4},
  {name: "Leila", gender: "female", age: 5},
  {name: "Maria", gender: "female", age: 15},
  {name: "May", gender: "female", age: 9},
  {name: "Susan", gender: "female", age: 8},
  {name: "Toni", gender: "female", age: 6},
  {name: "Alexa", gender: "female", age: 4},
  {name: "Anika", gender: "female", age: 3},
  {name: "Anna", gender: "female", age: 1},
  {name: "Ashley", gender: "female", age: 2},
  {name: "Becky", gender: "female", age: 9},
  {name: "Brigid", gender: "female", age: 13},
  {name: "Camilla", gender: "female", age: 10},
  {name: "Brooke", gender: "female", age: 8},
  {name: "Betty", gender: "female", age: 3},
  {name: "Elise", gender: "female", age: 2},
  {name: "Faith", gender: "female", age: 1},
  {name: "Bob", gender: "male", age: 4},
  {name: "Bob", gender: "male", age: 9},
  {name: "Billy", gender: "male", age: 5},
  {name: "Aron", gender: "male", age: 4},
  {name: "Gale", gender: "male", age: 8},
  {name: "Ethan", gender: "male", age: 2},
  {name: "Dylan", gender: "male", age: 13},
  {name: "Eliot", gender: "male", age: 12},
  {name: "Jamie", gender: "male", age: 3},
  {name: "Jeffry", gender: "male", age: 6},
  {name: "Hans", gender: "male", age: 2},
  {name: "Kale", gender: "male", age: 9},
  {name: "Sam", gender: "male", age: 4},
]

seed_children.each do |child|
  Child.create(child)
end
