namespace :dev do
  desc "TODO"
  task setup: :environment do
   puts "Adding brands"

   15.times do |i|
    Brand.create!(
      "name": Faker::Vehicle.manufacture,
      "creation_date": Faker::Date.between(from: '2014-09-23', to: '2020-09-25')
    )
   end

   puts "Finished add brands"

   puts "Adding cars"
   
   brands = Brand.all
   100.times do |i|
    brand = brands[rand(0..brands.length()-1)]
    Car.create!(
      "name": Faker::Vehicle.vin,
      "car_model": Faker::Vehicle.model,
      "price": rand(25000..99000),
      "brand": brand
    )
   end

   puts "Finished add cars"
  end

end
