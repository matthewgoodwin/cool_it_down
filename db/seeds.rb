# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Lounge.destroy_all

user1 = User.create(username:"mattg", fname: "matthew", lname:"goodwin", email:"matt@gmail.com", password:"password")
user2 = User.create(username:"dave34", fname: "david", lname:"cook", email:"david@gmail.com", password:"password")
user3 = User.create(username:"yuna123", fname: "yuna", lname:"gim", email:"una@gmail.com", password:"password")
user4 = User.create(username:"tperk", fname: "travis", lname:"", email:"tperk@gmail.com", password:"password")
user5 = User.create(username:"mk", fname: "mathew", lname:"cline", email:"mk@gmail.com", password:"password")


lounge1 = Lounge.create(name:"kitcat", cat:"bar", desc:"cat lounge and bar", city:"seoul", user: user1)
lounge2 = Lounge.create(name:"cutter and buck", cat:"tavern", desc:"upscale bar with classic music and drinks", city:"san francisco", user: user4)
lounge3 = Lounge.create(name:"petes", cat:"divebar", desc:"open at 6am til 6am", city:"Denver", user: user5)
lounge4 = Lounge.create(name:"sjbg", cat:"bar and grill", desc:"san joses premier sports bar and grill", city:"san jose", user: user2)
