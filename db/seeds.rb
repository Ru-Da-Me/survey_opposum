# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Author.create!(name:"Ruti", email:"ruti@mail.com", password: "password")
a2 = Author.create!(name:"Da-Me", email:"dame@mail.com", password: "password")

s1 = Survey.create!(title: "First Survey", description: "the first", author_id: 1)
s2 = Survey.create!(title: "First Survey", description: "the first", author_id: 2)


q1 = Question.create(required: true, question_type: "Short", text: "This is a short question.", description: "This is a short description")
q2 = Question.create(required: false, question_type: "Long", text: "This is a long question.", description: "This is a long description")
q3 = Question.create(required: true, question_type: "Yes/No", text: "This is a Yes/No question.", description: "This is a Yes/No description")

q4 = Question.create(required: true, question_type: "Short", text: "This is a short question.", description: "This is a short description")
q5 = Question.create(required: false, question_type: "Long", text: "This is a long question.", description: "This is a long description")
q6 = Question.create(required: true, question_type: "Yes/No", text: "This is a Yes/No question.", description: "This is a Yes/No description")

q7 = Question.create(required: true, question_type: "Short", text: "This is a short question.", description: "This is a short description")
q8 = Question.create(required: false, question_type: "Long", text: "This is a long question.", description: "This is a long description")
q9 = Question.create(required: true, question_type: "Yes/No", text: "This is a Yes/No question.", description: "This is a Yes/No description")

s1.questions << q1
s1.save
s1.questions << q2
s1.save
s1.questions << q3
s1.save

s2.questions << q4
s2.save
s2.questions << q5
s2.save
s2.questions << q6
s2.save

s3.questions << q7
s3.save
s3.questions << q8
s3.save
s3.questions << q9
s3.save
