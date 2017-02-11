# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Lounge.destroy_all
Bev.destroy_all



user1 = User.create(username:"mattg", fname: "matthew", lname:"goodwin", email:"matt@gmail.com", password:"password")
user2 = User.create(username:"dave34", fname: "david", lname:"cook", email:"david@gmail.com", password:"password")
user3 = User.create(username:"yuna123", fname: "yuna", lname:"gim", email:"una@gmail.com", password:"password")
user4 = User.create(username:"tperk", fname: "travis", lname:"", email:"tperk@gmail.com", password:"password")
user5 = User.create(username:"mk", fname: "mathew", lname:"cline", email:"mk@gmail.com", password:"password")


lounge1 = Lounge.create(name:"kitcat", cat:"bar", desc:"cat lounge and bar", city:"seoul", user: user1)
lounge2 = Lounge.create(name:"cutter and buck", cat:"tavern", desc:"upscale bar with classic music and drinks", city:"san francisco", user: user4)
lounge3 = Lounge.create(name:"petes", cat:"divebar", desc:"open at 6am til 6am", city:"Denver", user: user5)
lounge4 = Lounge.create(name:"sjbg", cat:"bar and grill", desc:"san joses premier sports bar and grill", city:"san jose", user: user2)

bev1 = Bev.create(name:"max", desc:"korean brew", cost: 3.00, lounge:lounge3)
bev2 = Bev.create(name:"bud light", desc:"american pilsner", cost: 5.55, lounge: lounge4)
bev3 = Bev.create(name:"blue ribbon", desc:"dive brew", cost: 2.00, lounge: lounge3)
bev4 = Bev.create(name:"whiskey rocks", desc:"whiskey on rocks", cost: 7.00, lounge: lounge1)
bev5 = Bev.create(name:"rum coke", desc:"spiced rum with american coke", cost: 5.55, lounge: lounge1)
bev6 = Bev.create(name:"white wine", desc:"napa wine white", cost: 6.00, lounge: lounge2)
bev7 = Bev.create(name:"sharks eye", desc:"belgian white", cost: 10.00, lounge: lounge2)
bev8 = Bev.create(name:"pike ipa", desc:"super ipa from pike, high alpha level extreme bitterness rating", cost: 7.00, lounge: lounge4)
