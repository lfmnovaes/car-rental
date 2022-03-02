# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@user1 = User.create(name: "John Doe", email: "john@mail.com", password: "qwe123", admin: "false")
@user2 = User.create(name: "Maria", email: "maria@mail.com", password: "asd123", admin: "true")
@car1 = Car.create(brand: "Cadillac", model: "CTS Luxury", year: "2019", image: "https://i.imgur.com/K4g6Tmw.png", price: 300)
@car2 = Car.create(brand: "Audi", model: "A3", year: "2014", image: "https://i.imgur.com/5d5upVD.png", price: 110)
@car3 = Car.create(brand: "Chevrolet", model: "Tahoe", year: "2016", image: "https://i.imgur.com/Wyk0n7h.png", price: 180)
@car4 = Car.create(brand: "Ford", model: "F150", year: "2018", image: "https://i.imgur.com/607VPs6.png", price: 160)
@car5 = Car.create(brand: "Ford", model: "Focus", year: "2012", image: "https://i.imgur.com/JT6saNp.png", price: 80)
@car6 = Car.create(brand: "Ford", model: "Fusion", year: "2020", image: "https://i.imgur.com/gHGiGP2.png", price: 200)
@car7 = Car.create(brand: "Nissan", model: "NV200", year: "2015", image: "https://i.imgur.com/lSGIqZy.png", price: 100)
@city1 = City.create(name: "Rio de Janeiro")
@city2 = City.create(name: "Buenos Aires")
@city3 = City.create(name: "San José")
@reservation1 = Reservation.create(date_start: "2022-01-12", date_end: "2022-01-15", user_id: @user1.id, city_id: @city1.id, car_id: @car1.id)
@reservation2 = Reservation.create(date_start: "2022-02-22", date_end: "2022-02-28", user_id: @user1.id, city_id: @city2.id, car_id: @car3.id)
@reservation3 = Reservation.create(date_start: "2022-03-01", date_end: "2022-03-10", user_id: @user2.id, city_id: @city3.id, car_id: @car5.id)
@reservation4 = Reservation.create(date_start: "2022-02-28", date_end: "2022-03-15", user_id: @user1.id, city_id: @city1.id, car_id: @car1.id)
