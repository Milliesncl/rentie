require 'date'

puts "Deleting everything"
  Building.destroy_all
  Unit.destroy_all
  Contractor.destroy_all
  Task.destroy_all
  User.destroy_all
  RentPayment.destroy_all
puts "Creating users"

user1 = User.create!(email: "francesca@email.com", password: "123456", first_name: "Francesca", last_name: "Hall")
user2 = User.create!(email: "kyle@email.com", password: "123456", first_name: "Kyle", last_name: "Masterson")
user3 = User.create!(email: "millie@email.com", password: "123456", first_name: "Millie", last_name: "Senecal")
user4 = User.create!(email: "meagan@email.com", password: "123456", first_name: "Meagan", last_name: "Butters")

puts "Creating buildings"

building1 = Building.create!(user: user1, address: "4641-4643 rue Chambord, H2J 3M8, Montréal, QC", mortgage: 4000, purchase_price: 700000, purchase_date: Date.new(2019,9,1), taxes: 800)
building2 = Building.create!(user: user1, address: "4251-4255 rue Marquette, H2J 3W8, Montréal, QC", mortgage: 3500, purchase_price: 600000, purchase_date: Date.new(2017,3,19), taxes: 500)
building3 = Building.create!(user: user2, address: "4421-4425 rue Saint-Urbain, H2W 1V7, Montréal, QC", mortgage: 2000, purchase_price: 506090, purchase_date: Date.new(2017,4,6), taxes: 1000)
building4 = Building.create!(user: user2, address: "7074-7078 rue de la Roche, H2S 2E6, Montréal, QC", mortgage: 1600, purchase_price: 780000, purchase_date: Date.new(2020,5,27), taxes: 1200)
building5 = Building.create!(user: user3, address: "7344-7346 2e avenue, H2A 3H1, Montréal, QC", mortgage: 1000, purchase_price: 450000, purchase_date: Date.new(2016,8,20), taxes: 600)
building6 = Building.create!(user: user4, address: "6250-6252 rue Dugas, H1N 1P2, Montréal, QC", mortgage: 1190, purchase_price: 400900, purchase_date: Date.new(2014,4,9), taxes: 300)

puts "Creating contractors"

contractor1 = Contractor.create!(user: user4, phone_number: "+1 438 123 2345", speciality: "roofer")
contractor2 = Contractor.create!(user: user1, phone_number: "+1 514 343 9320", speciality: "plumber")
contractor3 = Contractor.create!(user: user2, phone_number: "+1 438 567 2365", speciality: "electrician")
contractor4 = Contractor.create!(user: user3, phone_number: "+1 438 890 8976", speciality: "electrician")
contractor5 = Contractor.create!(user: user4, phone_number: "+1 438 245 2323", speciality: "plumber")

puts "Creating tasks"

task1 = Task.create!(contractor: contractor1, title: "Plumber needed", description: "My toilet exploded",urgency: "High")
task2 = Task.create!(contractor: contractor2, title: "Electrician needed", description: "Light switch doesn't work",urgency: "Medium")

puts "Creating units"

unit1 = Unit.create!(building: building1, unit_number: 4641, purchase_price: 400000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 5, rent_amount: 1000)
unit2 = Unit.create!(building: building1, unit_number: 4643, purchase_price: 300000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 5, rent_amount: 1200)
unit3 = Unit.create!(building: building2, unit_number: 4251, purchase_price: 200000, payment_method: "Cheque", renewal_date: Date.new(2021,9,1), payment_date: 1, rent_amount: 1000)
unit4 = Unit.create!(building: building2, unit_number: 4253, purchase_price: 150000, payment_method: "Interac", renewal_date: Date.new(2021,6,1), payment_date: 1, rent_amount: 800)
unit5 = Unit.create!(building: building2, unit_number: 4255, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 5, rent_amount: 1400)
unit6 = Unit.create!(building: building3, unit_number: 4421, purchase_price: 200090, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 1, rent_amount: 1000)
unit7 = Unit.create!(building: building3, unit_number: 4423, purchase_price: 150000, payment_method: "Cheque", renewal_date: Date.new(2021,4,1), payment_date: 1, rent_amount: 1200)
unit8 = Unit.create!(building: building3, unit_number: 4425, purchase_price: 156000, payment_method: "Interac", renewal_date: Date.new(2021,5,1), payment_date: 1, rent_amount: 800)
unit9 = Unit.create!(building: building4, unit_number: 7074, purchase_price: 300000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 1, rent_amount: 1000)
unit10 = Unit.create!(building: building4, unit_number: 7076, purchase_price: 280000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 5, rent_amount: 1200)
unit11 = Unit.create!(building: building4, unit_number: 7078, purchase_price: 200000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 5, rent_amount: 1200)
unit12 = Unit.create!(building: building5, unit_number: 7344, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,9,1), payment_date: 1, rent_amount: 1150)
unit13 = Unit.create!(building: building5, unit_number: 7346, purchase_price: 200000, payment_method: "Interac", renewal_date: Date.new(2021,5,1), payment_date: 1, rent_amount: 900)
unit14 = Unit.create!(building: building6, unit_number: 6250, purchase_price: 150900, payment_method: "Interac", renewal_date: Date.new(2021,6,1), payment_date: 1, rent_amount: 800)
unit15 = Unit.create!(building: building6, unit_number: 6252, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 1, rent_amount: 900)

puts "Done"
