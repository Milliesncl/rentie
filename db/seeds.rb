require 'date'
require 'open-uri'

puts "Deleting everything"
  Building.destroy_all
  Unit.destroy_all
  Contractor.destroy_all
  Task.destroy_all
  User.destroy_all
puts "Creating users"

picture1 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598549834/0xo0ydt8vwsui4si6t1ezj7mra5j.jpg')
picture2 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598041192/ies3hxqv1okfvx7c2ahb1lfyyf7t.jpg')
picture3 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598041193/1y4eb367yfhmwmt88r4sxdw5p0or.jpg')
picture4 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598041194/ae2zdctipjermztlk8xya6bgcxp4.jpg')
picture5 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598549834/0xo0ydt8vwsui4si6t1ezj7mra5j.jpg')

owner1 = User.create!(phone_number: "+1 438 123 2345", email: "meagan@email.com", password: "123456", first_name: "Meagan", last_name: "Butters")
renter1 = User.create!(phone_number: "+1 438 371 2345", email: "rentie1@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter2 = User.create!(phone_number: "+1 514 123 2345", email: "rentie2@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter2 = User.create!(phone_number: "+1 438 123 2345", email: "rentie3@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter3 = User.create!(phone_number: "+1 514 123 2345", email: "rentie4@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter4 = User.create!(phone_number: "+1 438 123 2345", email: "rentie5@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter5 = User.create!(phone_number: "+1 438 123 2345", email: "francesca@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter6 = User.create!(phone_number: "+1 438 123 2345", email: "kyle@email.com", password: "123456", first_name: "Kyle", last_name: "Masterson", renter: true)
renter7 = User.create!(phone_number: "+1 438 123 2345", email: "millie@email.com", password: "123456", first_name: "Millie", last_name: "Senecal", renter: true)
renter8 = User.create!(phone_number: "+1 438 123 2345", email: "rentie6@email.com", password: "123456", first_name: "Millie", last_name: "Senecal", renter: true)
renter9 = User.create!(phone_number: "+1 514 123 2345", email: "rentie7@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter10 = User.create!(phone_number: "+1 514 123 2345", email: "rentie8@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter11 = User.create!(phone_number: "+1 514 123 2345", email: "rentie9@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
renter12 = User.create!(phone_number: "+1 514 123 2345", email: "rentie10@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
# renter3 = User.create!(phone_number: "+1 514 123 2345", email: "rentie4@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
# renter3 = User.create!(phone_number: "+1 514 123 2345", email: "rentie4@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)
# renter3 = User.create!(phone_number: "+1 514 123 2345", email: "rentie4@email.com", password: "123456", first_name: "Francesca", last_name: "Hall", renter: true)


puts "Add photos for users"

renter5.photo.attach(io: picture1, filename: 'francesca.jpg', content_type: 'image/jpg')
renter6.photo.attach(io: picture2, filename: 'kyle.jpg', content_type: 'image/jpg')
renter7.photo.attach(io: picture3, filename: 'millie.jpg', content_type: 'image/jpg')
owner1.photo.attach(io: picture4, filename: 'meagan.jpg', content_type: 'image/jpg')
renter1.photo.attach(io: picture5, filename: 'rentie.jpg', content_type: 'image/jpg')

puts "Creating buildings"

building1 = Building.create!(user: owner1, address: "4641 rue Chambord, H2J 3M8, Montréal, QC", mortgage: 2000, purchase_price: 700000, purchase_date: Date.new(2019,9,1), taxes: 800)
building2 = Building.create!(user: owner1, address: "4251 rue Marquette, H2J 3W8, Montréal, QC", mortgage: 2500, purchase_price: 600000, purchase_date: Date.new(2017,3,19), taxes: 500)


puts "Creating contractors"

contractor1 = Contractor.create!(first_name: "Wince", last_name: "Shum", user: owner1, phone_number: "+1 438 123 2345", email: "wince@email.com", speciality: "Roofer")
contractor2 = Contractor.create!(first_name: "Coriander", last_name: "Nasielski", user: owner1, phone_number: "+1 514 343 9320", email: "coriander@email.com", speciality: "Plumber")
contractor3 = Contractor.create!(first_name: "Nachiket", last_name: "Pusalkar", user: owner1, phone_number: "+1 438 567 2365", email: "nachiket@email.com", speciality: "Electrician")
contractor4 = Contractor.create!(first_name: "Martin", last_name: "Giannakopolous", user: owner1, phone_number: "+1 438 890 8976", email: "martin@email.com", speciality: "Electrician")
contractor5 = Contractor.create!(first_name: "Aline", last_name: "Gasparindo",user: owner1, phone_number: "+1 438 245 2323", email: "aline@email.com", speciality: "Plumber")


puts "Creating units"

picture1unit1 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image1_zlpipf.jpg')
picture2unit1 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image2_csj5ev.jpg')
picture3unit1 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811808/rentie/unit1/image3_ivr8jg.jpg')

picture1unit2 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image1_cm4min.jpg')
picture2unit2 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image2_dlk1ev.jpg')
picture3unit2 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image3_qzzd3l.jpg')

picture1unit3 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image1_mjfudo.jpg')
picture2unit3 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image2_svij25.jpg')
picture3unit3 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image3_gikzca.jpg')

picture1unit4 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image1_ncn64x.jpg')
picture2unit4 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image2_qwr37q.jpg')
picture3unit4 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image3_xfyqru.jpg')

picture1unit5 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image1_rp4sx4.jpg')
picture2unit5 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image2_ijxmd5.jpg')
picture3unit5 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image3_xbzeua.jpg')

picture1unit6 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image1_zlpipf.jpg')
picture2unit6 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image2_csj5ev.jpg')
picture3unit6 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811808/rentie/unit1/image3_ivr8jg.jpg')

picture1unit7 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image1_cm4min.jpg')
picture2unit7 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image2_dlk1ev.jpg')
picture3unit7 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image3_qzzd3l.jpg')

picture1unit8 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image1_mjfudo.jpg')
picture2unit8 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image2_svij25.jpg')
picture3unit8 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image3_gikzca.jpg')

picture1unit9 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image1_ncn64x.jpg')
picture2unit9 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image2_qwr37q.jpg')
picture3unit9 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image3_xfyqru.jpg')

picture1unit10 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image1_rp4sx4.jpg')
picture2unit10 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image2_ijxmd5.jpg')
picture3unit10 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image3_xbzeua.jpg')

picture1unit11 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image1_zlpipf.jpg')
picture2unit11 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image2_csj5ev.jpg')
picture3unit11 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811808/rentie/unit1/image3_ivr8jg.jpg')

picture1unit12 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image1_cm4min.jpg')
picture2unit12 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image2_dlk1ev.jpg')
picture3unit12 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image3_qzzd3l.jpg')

# picture1unit13 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image1_mjfudo.jpg')
# picture2unit13 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image2_svij25.jpg')
# picture3unit13 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit3/image3_gikzca.jpg')

# picture1unit14 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image1_ncn64x.jpg')
# picture2unit14 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image2_qwr37q.jpg')
# picture3unit14 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit4/image3_xfyqru.jpg')

# picture1unit15 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image1_rp4sx4.jpg')
# picture2unit15 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image2_ijxmd5.jpg')
# picture3unit15 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811817/rentie/unit5/image3_xbzeua.jpg')

# picture1unit16 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image1_zlpipf.jpg')
# picture2unit16 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image2_csj5ev.jpg')
# picture3unit16 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811808/rentie/unit1/image3_ivr8jg.jpg')

# picture1unit17 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image1_zlpipf.jpg')
# picture2unit17 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811807/rentie/unit1/image2_csj5ev.jpg')
# picture3unit17 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811808/rentie/unit1/image3_ivr8jg.jpg')

# picture1unit18 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image1_cm4min.jpg')
# picture2unit18 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image2_dlk1ev.jpg')
# picture3unit18 = URI.open('https://res.cloudinary.com/duc5z0utg/image/upload/v1598811816/rentie/unit2/image3_qzzd3l.jpg')

unit1 = Unit.create!(user: user1, building: building1, unit_number: 100, square_meters: 900.0, bathrooms: 1.5, bedrooms: 3.5, purchase_price: 400000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 5, rent_amount: 1000)
unit2 = Unit.create!(user: user2, building: building1, unit_number: 101, square_meters: 889.2, bathrooms: 1.5, bedrooms: 3.5, purchase_price: 300000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 5, rent_amount: 1200)
unit3 = Unit.create!(user: user3, building: building1, unit_number: 102, square_meters: 962.0, bathrooms: 1.5, bedrooms: 3.5, purchase_price: 200000, payment_method: "Cheque", renewal_date: Date.new(2021,9,1), payment_date: 1, rent_amount: 1000)
unit4 = Unit.create!(user: user4, building: building1, unit_number: 103, square_meters: 921.0, bathrooms: 1.5, bedrooms: 3.5, purchase_price: 150000, payment_method: "Interac", renewal_date: Date.new(2021,6,1), payment_date: 1, rent_amount: 800)
unit5 = Unit.create!(user: user5, building: building2, unit_number: 200, square_meters: 984.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 5, rent_amount: 1400)
unit6 = Unit.create!(user: user6, building: building2, unit_number: 201, square_meters: 901.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 200090, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 1, rent_amount: 1000)
unit7 = Unit.create!(user: user7, building: building2, unit_number: 202, square_meters: 904.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 150000, payment_method: "Cheque", renewal_date: Date.new(2021,4,1), payment_date: 1, rent_amount: 1200)
unit8 = Unit.create!(user: user8, building: building2, unit_number: 203, square_meters: 913.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 156000, payment_method: "Interac", renewal_date: Date.new(2021,5,1), payment_date: 1, rent_amount: 800)
unit9 = Unit.create!(user: user9, building: building1, unit_number: 201, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 300000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 1, rent_amount: 1000)
unit10 = Unit.create!(user: user10, building: building1, unit_number: 202, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 280000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 5, rent_amount: 1200)
unit11 = Unit.create!(user: user11, building: building2, unit_number: 101, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 200000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 5, rent_amount: 1200)
unit12 = Unit.create!(user: user12, building: building2, unit_number: 102, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.0, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,9,1), payment_date: 1, rent_amount: 1100)
# unit13 = Unit.create!(user: user, building: building4, unit_number: 7346, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.5, purchase_price: 200000, payment_method: "Interac", renewal_date: Date.new(2021,5,1), payment_date: 1, rent_amount: 900)
# unit14 = Unit.create!(user: user5, building: building4, unit_number: 6250, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.5, purchase_price: 150900, payment_method: "Interac", renewal_date: Date.new(2021,6,1), payment_date: 1, rent_amount: 800)
# unit15 = Unit.create!(building: building4, unit_number: 6252, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.5, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 1, rent_amount: 900)
# unit16 = Unit.create!(building: building5, unit_number: 4419, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.5, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,7,1), payment_date: 1, rent_amount: 1100)
# unit17 = Unit.create!(building: building5, unit_number: 4421, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.5, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,9,1), payment_date: 1, rent_amount: 1200)
# unit18 = Unit.create!(building: building5, unit_number: 4423, square_meters: 900.0, bathrooms: 1.0, bedrooms: 2.5, purchase_price: 250000, payment_method: "Interac", renewal_date: Date.new(2021,8,1), payment_date: 1, rent_amount: 1200)

puts "Add photos for units"

puts "Add photos for unit1"

unit1.photos.attach(io: picture1unit1, filename: 'image1.jpg', content_type: 'image/jpg')
unit1.photos.attach(io: picture2unit1, filename: 'image2.jpg', content_type: 'image/jpg')
unit1.photos.attach(io: picture3unit1, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit2"
unit2.photos.attach(io: picture1unit2, filename: 'image4.jpg', content_type: 'image/jpg')
unit2.photos.attach(io: picture2unit2, filename: 'image2.jpg', content_type: 'image/jpg')
unit2.photos.attach(io: picture3unit2, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit3"
unit3.photos.attach(io: picture1unit3, filename: 'image1.jpg', content_type: 'image/jpg')
unit3.photos.attach(io: picture2unit3, filename: 'image2.jpg', content_type: 'image/jpg')
unit3.photos.attach(io: picture3unit3, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit4"
unit4.photos.attach(io: picture1unit4, filename: 'image1.jpg', content_type: 'image/jpg')
unit4.photos.attach(io: picture2unit4, filename: 'image2.jpg', content_type: 'image/jpg')
unit4.photos.attach(io: picture3unit4, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit5"
unit5.photos.attach(io: picture1unit5, filename: 'image1.jpg', content_type: 'image/jpg')
unit5.photos.attach(io: picture2unit5, filename: 'image2.jpg', content_type: 'image/jpg')
unit5.photos.attach(io: picture3unit5, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit6"
unit6.photos.attach(io: picture1unit6, filename: 'image1.jpg', content_type: 'image/jpg')
unit6.photos.attach(io: picture2unit6, filename: 'image2.jpg', content_type: 'image/jpg')
unit6.photos.attach(io: picture3unit6, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit7"
unit7.photos.attach(io: picture1unit7, filename: 'image1.jpg', content_type: 'image/jpg')
unit7.photos.attach(io: picture2unit7, filename: 'image2.jpg', content_type: 'image/jpg')
unit7.photos.attach(io: picture3unit7, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit8"
unit8.photos.attach(io: picture1unit8, filename: 'image1.jpg', content_type: 'image/jpg')
unit8.photos.attach(io: picture2unit8, filename: 'image2.jpg', content_type: 'image/jpg')
unit8.photos.attach(io: picture3unit8, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit9"
unit9.photos.attach(io: picture1unit9, filename: 'image1.jpg', content_type: 'image/jpg')
unit9.photos.attach(io: picture2unit9, filename: 'image2.jpg', content_type: 'image/jpg')
unit9.photos.attach(io: picture3unit9, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit10"
unit10.photos.attach(io: picture1unit10, filename: 'image1.jpg', content_type: 'image/jpg')
unit10.photos.attach(io: picture2unit10, filename: 'image2.jpg', content_type: 'image/jpg')
unit10.photos.attach(io: picture3unit10, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit11"
unit11.photos.attach(io: picture1unit11, filename: 'image1.jpg', content_type: 'image/jpg')
unit11.photos.attach(io: picture2unit11, filename: 'image2.jpg', content_type: 'image/jpg')
unit11.photos.attach(io: picture3unit11, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Add photos for unit12"
unit12.photos.attach(io: picture1unit12, filename: 'image1.jpg', content_type: 'image/jpg')
unit12.photos.attach(io: picture2unit12, filename: 'image2.jpg', content_type: 'image/jpg')
unit12.photos.attach(io: picture3unit12, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Add photos for unit13"
# unit13.photos.attach(io: picture1unit13, filename: 'image1.jpg', content_type: 'image/jpg')
# unit13.photos.attach(io: picture2unit13, filename: 'image2.jpg', content_type: 'image/jpg')
# unit13.photos.attach(io: picture3unit13, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Add photos for unit14"
# unit14.photos.attach(io: picture1unit14, filename: 'image1.jpg', content_type: 'image/jpg')
# unit14.photos.attach(io: picture2unit14, filename: 'image2.jpg', content_type: 'image/jpg')
# unit14.photos.attach(io: picture3unit14, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Add photos for unit15"
# unit15.photos.attach(io: picture1unit15, filename: 'image1.jpg', content_type: 'image/jpg')
# unit15.photos.attach(io: picture2unit15, filename: 'image2.jpg', content_type: 'image/jpg')
# unit15.photos.attach(io: picture3unit15, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Add photos for unit16"
# unit16.photos.attach(io: picture1unit16, filename: 'image1.jpg', content_type: 'image/jpg')
# unit16.photos.attach(io: picture2unit16, filename: 'image2.jpg', content_type: 'image/jpg')
# unit16.photos.attach(io: picture3unit16, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Add photos for unit17"
# unit17.photos.attach(io: picture1unit17, filename: 'image1.jpg', content_type: 'image/jpg')
# unit17.photos.attach(io: picture2unit17, filename: 'image2.jpg', content_type: 'image/jpg')
# unit17.photos.attach(io: picture3unit17, filename: 'image3.jpg', content_type: 'image/jpg')

# puts "Add photos for unit18"
# unit18.photos.attach(io: picture1unit18, filename: 'image1.jpg', content_type: 'image/jpg')
# unit18.photos.attach(io: picture2unit18, filename: 'image2.jpg', content_type: 'image/jpg')
# unit18.photos.attach(io: picture3unit18, filename: 'image3.jpg', content_type: 'image/jpg')

puts "Creating tasks"

task1 = Task.create!(building: building1, contractor: contractor2, title: "Toilet exploded! 911!!", description: "My toilet exploded, there's water everywhere!! Please contact me as soon as possible", category: "Plumbing", expense: 293.41, urgency: "High", unit: unit3, start_date: "2020-09-27")
task2 = Task.create!(building: building1, contractor: contractor3, title: "Electrician needed", description: "Light switch doesn't work", category: "Electricity", expense: 192.35, urgency: "Medium", unit: unit2, start_date: "2020-01-27")
task3 = Task.create!(building: building1, title: "Electrician needed", description: "Light switch doesn't work", category: "Furniture", expense: 92.11, urgency: "Medium", unit: unit2, start_date: "2020-02-27")
task4 = Task.create!(building: building1, contractor: contractor5, title: "Electrician needed", description: "Light switch doesn't work", category: "Plumbing", expense: 605.3, urgency: "Medium", unit: unit4, start_date: "2020-03-27")
task5 = Task.create!(building: building2, title: "Electrician needed", description: "Light switch doesn't work", category: "Other", expense: 51.32, urgency: "Medium", unit: unit6, start_date: "2020-04-27")
task6 = Task.create!(building: building2, title: "Electrician needed", description: "Light switch doesn't work", category: "Other", expense: 11.02, urgency: "Medium", unit: unit8, start_date: "2020-05-27")
task7 = Task.create!(building: building2, contractor: contractor4, title: "Electrician needed", description: "Light switch doesn't work", category: "Electricity", expense: 1002.09, urgency: "Medium", unit: unit5, start_date: "2020-06-27")

puts "Done"
