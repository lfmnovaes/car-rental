# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@user1 = User.create(name: "John Doe", email: "john@mail.com", password: "qwe123", admin: "false")
@car1 = Car.create(brand: "Toyota", model: "Corolla", year: "2019", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/2019_Toyota_Corolla_Icon_Tech_VVT-i_Hybrid_1.8.jpg/1920px-2019_Toyota_Corolla_Icon_Tech_VVT-i_Hybrid_1.8.jpg", reserved: true, price: 40)
@car2 = Car.create(brand: "Audi", model: "A8", year: "2018", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/2018_Audi_A8_50_TDi_Quattro_Automatic_3.0.jpg/1920px-2018_Audi_A8_50_TDi_Quattro_Automatic_3.0.jpg", reserved: false, price: 60)
@city1 = City.create(name: "Rio de Janeiro")
@city2 = City.create(name: "Buenos Aires")
@city3 = City.create(name: "San José")
@reservation1 = Reservation.create(date_start: "2022-01-12", date_end: "2022-01-15", user_id: @user1.id, city_id: @city1.id, car_id: @car1.id)
