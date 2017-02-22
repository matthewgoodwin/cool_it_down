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
lounge3 = Lounge.create(name:"petes", cat:"divebar", desc:"open at 6am til 6am", city:"denver", user: user5)
lounge4 = Lounge.create(name:"sjbg", cat:"bar and grill", desc:"san joses premier sports bar and grill", city:"san jose", user: user2)


bev1 = Bev.create(name:"max", desc:"korean brew", cat:"beer", style:"malt", cost: 3.00, lounge: lounge3)
bev2 = Bev.create(name:"bud light", desc:"Brewed with two-row & six-row barley malt, Bud Light has good balance hops & malt with a quick finish. Oh, and it has less calories to boot!", cat:"beer", style:"pilsner", cost: 5.55, lounge: lounge4)
bev3 = Bev.create(name:"pabst blue ribbon", desc:"Pabst Blue Ribbon is a premium lager brew crafted with a hefty infusion of 6-row barley in its ingredient package, a carefully balanced carbohydrate profile from corn syrup, and Pacific domestic hops.", cat:"american pilsner", style:"pilsner", cost: 3.50, lounge: lounge3)
bev4 = Bev.create(name:"whiskey rocks", desc:"12 year old whiskey. whiskey on rocks", cat:"spirit", style:"whiskey", cost: 7.00, lounge: lounge1)
bev5 = Bev.create(name:"rum coke", desc:"spiced rum with american coke", cat:"cocktail", style:"rum", cost: 5.55, lounge: lounge1)
bev6 = Bev.create(name:"challis lane chardonnay", desc:"2015 VINTAGE ONLY; BRONZE MEDAL, SF CHRONICLE WINE COMP - Classically styled, this Chardonnay is bright with citrus, melon & toasty oak aromas. Medium body with flavors of apple & a hint of graham.", cat:"white wine", style:"other", cost: 22.55, lounge: lounge2)
bev7 = Bev.create(name:"shock top", desc:"This light golden-colored, Belgian-style wheat beer is memorably aromatic and has a smooth, complex taste. Shock Top is unfiltered and naturally cloudy creating a traditional wheat beer with attitude.", cat:"french ale", style:"Witbier", cost: 10.00, lounge: lounge2)
bev8 = Bev.create(name:"lagunitas ipa", desc:"#1 Selling IPA in CA. Has a huge hop character, but with enough malty richness to keep thinks insane, flavorous, and dangerously drinkable. ABV 6.2% 45 IBU", cat:"american ipa", style:"ipa",  cost: 16.99, lounge: lounge4)
