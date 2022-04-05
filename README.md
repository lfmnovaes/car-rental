![](https://img.shields.io/badge/Microverse-blueviolet)

# Rent Car

> BackEnd API application to rent cars, used in conjunction with the [FrontEnd](https://github.com/lfmnovaes/car-rental-front-end) React application.

## Live Servers

- BackEnd API Server hosted [Heroku](https://final-capstone-project-lfmn.herokuapp.com/api/cars)
- FrontEnd SaaS hosted on [Netlify](https://car-rental-frontend-lfmn.netlify.app/)

## Built With

Ruby >= 3.0.0

Rails >= 7.0.0

Postgresql >= 12.9

## API Routes

| Route | Verb | Description |
|---------|-------------|-------------|
| `/api/cars` | GET | Index of all Cars |
| `/api/cars` | POST | Create a new Car |
| `/api/cars/:id` | GET | View Car details by id |
| `/api/cars/:id` | DELETE | Delete Car by id |
| `/api/cities` | GET | Index of all available cities |
| `/api/cities/:id` | GET | View a city by id |
| `/api/reservations` | GET | Index of all users reservations |
| `/api/reservations` | POST | Create a reservation |
| `/api/reservations/:id` | GET | Show detailed infomation of a reservation |
| `/api/reservations/:id` | DELETE | Delete a reservation |
| `/api/users` | GET | Index of Users |
| `/api/users/:id` | GET | Show specific User by id |

## How to run the server locally

- To get a local copy of the repository please run the following commands on your terminal:
   ```
   git clone https://github.com/lfmnovaes/car-rental.git
   ```
- Go to the cloned directory with `cd car-rental`
- Run `bundle install` to install all the necessary packages
- Install the `postgresql` database and all necessary dependencies (if you are on Ubuntu just run `sudo apt install postgresql postgresql-contrib`)
- Run `rails db:create` and `rails db:migrate` to create the database locally
  - If you already have one with the same name just run `rails db:reset` instead
- After installing everything, you can run now the website with `rails s`
- To run the Ruby linter (Rubocop) locally, just run: `rubocop`
  
## Authors

👤 **Luís Fernando**

- GitHub: [![@lfmnovaes](https://img.shields.io/github/followers/lfmnovaes?color=lightgray&style=plastic&labelColor=blue)](https://github.com/lfmnovaes)
- Twitter: [![@lfmnovaes](https://img.shields.io/twitter/follow/lfmnovaes?style=plastic&labelColor=blue)](https://www.twitter.com/lfmnovaes/)
- LinkedIn: [![@lfmnovaes](https://img.shields.io/badge/LinkedIn-blue?style=plastic&logo=linkedin)](https://www.linkedin.com/in/lfmnovaes/)

👤 **Ramiro Aquistapace**

- GitHub: [@ramiaquista](https://github.com/ramiaquista)
- Twitter: [@ramiaq1](https://twitter.com/ramiaq1)
- LinkedIn: [RamiroAquistapace](https://www.linkedin.com/in/ramiro-aquistapace-32b61b204/)

👤 **Enmanuel Lassis**

- [GitHub](https://github.com/elassis)
- [LinkedIn](https://linkedin.com/in/enmanuel-lassis-peña)

## Kanban board

- Link to the kanban board: [Kanban-Board](https://github.com/lfmnovaes/car-rental-back-end/projects/1)

- Link to the kanban board image: [Kanban-Image](https://user-images.githubusercontent.com/61469201/154359272-8ebc368b-dcb9-403c-93df-e5a7b50b8ba7.png)

- Number of Team Members: 3

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse

## 📝 License

This project is [MIT](./LICENSE) licensed.
