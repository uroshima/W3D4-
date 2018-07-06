# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'James Bond')
user2 = User.create(username: 'Harry Potter')
user3 = User.create(username: 'Jing Xia')

poll1 = Poll.create(user_id:3, title: 'Another James Bond movie?')
poll2 = Poll.create(user_id:2, title: 'Safety concern at Hogwart')
poll3 = Poll.create(user_id:3, title: 'coding bootcamp poll')


question1 = Question.create(poll_id: 1, text: 'Would you watch another new James Bond movie?')
question3 = Question.create(poll_id: 3, text: 'Which one of the following coding bootcamps are you likely to attend?')
question2 = Question.create(poll_id:2, text: 'How likely do you think Hogwart will be under another major attack?')



