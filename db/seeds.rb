# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(id:  1, name:  "admin", email: "admin@gmail.com", password: "password", role: 0)

49.times do |n|
  User.create!(id:  n+2, name:  "user#{n+1}", email: "user#{n+1}@gmail.com", password: "password", role: [0, 1].sample)
end

Question.destroy_all
Answer.destroy_all
q = Question.create(id:  1, text: "Which one is not an object oriented programming language?")
q.answers.create(id:  1, question_id: q.id, text: "Java", flag: false)
q.answers.create(id:  2, question_id: q.id, text: "C#", flag: false)
q.answers.create(id:  3, question_id: q.id, text: "C++", flag: false)
q.answers.create(id:  4, question_id: q.id, text: "C", flag: true)
q = Question.create(id:  2, text: "Which language is used for styling web pages?")
q.answers.create(id:  5, question_id: q.id, text: "HTML", flag: false)
q.answers.create(id:  6, question_id: q.id, text: "JQuery", flag: false)
q.answers.create(id:  7, question_id: q.id, text: "CSS", flag: true)
q.answers.create(id:  8, question_id: q.id, text: "XML", flag: false)
q = Question.create(id:  3, text: "There are ____ main components of object oriented programming.")
q.answers.create(id:  9, question_id: q.id, text: "1", flag: false)
q.answers.create(id:  10, question_id: q.id, text: "6", flag: false)
q.answers.create(id:  11, question_id: q.id, text: "2", flag: false)
q.answers.create(id:  12, question_id: q.id, text: "4", flag: true)
q = Question.create(id:  4, text: "Which language is used for web apps?")
q.answers.create(id:  13, question_id: q.id, text: "PHP", flag: false)
q.answers.create(id:  14, question_id: q.id, text: "Python", flag: false)
q.answers.create(id:  15, question_id: q.id, text: "Javascript", flag: false)
q.answers.create(id:  16, question_id: q.id, text: "All", flag: true)
q = Question.create(id:  5, text: "MVC is a ____.")
q.answers.create(id:  17, question_id: q.id, text: "Language", flag: false)
q.answers.create(id:  18, question_id: q.id, text: "Library", flag: false)
q.answers.create(id:  19, question_id: q.id, text: "Framework", flag: true)
q.answers.create(id:  20, question_id: q.id, text: "All", flag: false)
