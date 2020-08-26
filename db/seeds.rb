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

task1 = Task.create!(title: "Plumber needed", description: "My toilet exploded",urgency: "High")
task2 = Task.create!(title: "Electrician needed", description: "Light switch doesn't work",urgency: "Medium")