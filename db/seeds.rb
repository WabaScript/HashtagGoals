# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"ricky", location:"ny", email: 'ricky@gmail.com', password_digest: 'ricky')
u2 = User.create(name:"Sekou", location:"ny", email: 'sekou@gmail.com', password_digest: 'Sekou')

g1 = Goal.create(name:"WeightLoss", owner_id: 1)

fg = FollowGoal.create(follower_id: 2, goal_id: 1)

p1 = Post.create(content:"hello", goal_id: 1, user_id: 2)