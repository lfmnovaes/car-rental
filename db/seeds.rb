# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create(brand: "Toyota", model: "Corolla", year: "2019", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/2019_Toyota_Corolla_Icon_Tech_VVT-i_Hybrid_1.8.jpg/1920px-2019_Toyota_Corolla_Icon_Tech_VVT-i_Hybrid_1.8.jpg", reserved: true, price: 40)
Car.create(brand: "Audi", model: "A8", year: "2018", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/2018_Audi_A8_50_TDi_Quattro_Automatic_3.0.jpg/1920px-2018_Audi_A8_50_TDi_Quattro_Automatic_3.0.jpg", reserved: false, price: 60)
