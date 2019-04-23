# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(id:  1, name:  "Admin", email: "admin@gmail.com", password: "password", role: 0)

49.times do |n|
  User.create!(id:  n+2, name:  "User#{n+1}", email: "user#{n+1}@gmail.com", password: "password", role: [0, 1].sample)
end

Question.destroy_all
Answer.destroy_all
Question.create(id:  1, text: "Which one is not an object oriented programming language?", answers_attributes: {
  0 => {
    text: "Java", flag: false
  },
  1 => {
    text: "C#", flag: false
  },
  2 => {
    text: "C++", flag: false
  },
  3 => {
    text: "C", flag: true
  },
})
Question.create(id:  2, text: "Which language is used for styling web pages?", answers_attributes: {
  0 => {
    text: "HTML", flag: false
  },
  1 => {
    text: "JQuery", flag: false
  },
  2 => {
    text: "CSS", flag: true
  },
  3 => {
    text: "XML", flag: false
  },
})
Question.create(id:  3, text: "There are ____ main components of object oriented programming.", answers_attributes: {
  0 => {
    text: "1", flag: false
  },
  1 => {
    text: "6", flag: false
  },
  2 => {
    text: "2", flag: false
  },
  3 => {
    text: "4", flag: true
  },
})
Question.create(id:  4, text: "Which language is used for web apps?", answers_attributes: {
  0 => {
    text: "PHP", flag: false
  },
  1 => {
    text: "Python", flag: false
  },
  2 => {
    text: "Javascript", flag: false
  },
  3 => {
    text: "All", flag: true
  },
})
Question.create(id:  5, text: "MVC is a ____.", answers_attributes: {
  0 => {
    text: "Language", flag: false
  },
  1 => {
    text: "Library", flag: false
  },
  2 => {
    text: "Framework", flag: true
  },
  3 => {
    text: "All", flag: false
  },
})
