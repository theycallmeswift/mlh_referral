# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: 'rafael@gmail.com', password: 'password', password_confirmation: 'password')
u2 = User.create(email: 'anne@gmail.com', password: 'password', password_confirmation: 'password')
u3 = User.create(email: 'ivy@gmail.com', password: 'password', password_confirmation: 'password')
u4 = User.create(email: 'zach@gmail.com', password: 'password', password_confirmation: 'password')
u5 = User.create(email: 'maxwell@gmail.com', password: 'password', password_confirmation: 'password')
u6 = User.create(email: 'yoscar@gmail.com', password: 'password', password_confirmation: 'password')
u7 = User.create(email: 'angeli@gmail.com', password: 'password', password_confirmation: 'password')
u8 = User.create(email: 'celia@gmail.com', password: 'password', password_confirmation: 'password')
u9 = User.create(email: 'ryan@gmail.com', password: 'password', password_confirmation: 'password')
u10 = User.create(email: 'jose@gmail.com', password: 'password', password_confirmation: 'password')

h1 = Hackathon.create(
  title: "Robotic Pets",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/2/23/Lawnmower_Dog.jpg",
  description: "
    Bots come alive. Join a team and see what type of robotic critters you can create
    in this 72 hour hackathon.
  ",
  starts_at: Time.now,
  ends_at: -2.days.ago
)

h2 = Hackathon.create(
  title: "Virtual Reality",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/3/31/Rixty_Minutes.jpg",
  description: "
    With the craze of virtual reality, join a team and help make an idea come into life.
    Build your very own VR experience and see if you can beat the rest!
  ",
  starts_at: Time.now,
  ends_at: -2.days.ago
)

h3 = Hackathon.create(
  title: "Decision Trees",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/6/6b/A_Rickle_in_Time.jpg",
  description: "
    Join us in this two day event. Teams will write algorithms in hopes of defeating
    amateur chess players. Algorithms that can learn from its mistakes!
  ",
  starts_at: Time.now,
  ends_at: -2.days.ago
)

h4 = Hackathon.create(
  title: "No A.I. too small",
  cover_image_url: "https://upload.wikimedia.org/wikipedia/en/6/6e/Meeseeks_and_Destroy.jpg",
  description: "
    Join us for this one day event in creating AI that helps you solve a simple
    problem that you face everyday.
  ",
  starts_at: Time.now,
  ends_at: -2.days.ago
)

Rsvp.create(hackathon: h1, attendee: u2, referred_by: u1)
Rsvp.create(hackathon: h1, attendee: u3, referred_by: u1)
