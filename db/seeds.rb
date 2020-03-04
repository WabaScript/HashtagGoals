# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
=======
u1 = User.create(name:"ricky", location:"ny", email: 'ricky@gmail.com', password_digest: 'ricky')
u2 = User.create(name:"Sekou", location:"ny", email: 'sekou@gmail.com', password_digest: 'Sekou')
>>>>>>> master

User.destroy_all
Goal.destroy_all
FollowGoal.destroy_all
Post.destroy_all


20.times do 
    user = User.create({
      name: Faker::DcComics.hero,
      location: Faker::Nation.capital_city,
      email: Faker::Internet.free_email,
      password: Faker::Number.number(digits: 6).to_s
    })
  end
  
#   def date
#     random_year = Random.new.rand(2019..2020)
#     random_month =Random.new.rand(1..12)
#     random_day  = Random.new.rand(1..30)
#     return "#{Date.new(random_day,random_month,random_year)}"
#     end
  
  5.times do
    Goal.create({
      title: Faker::GreekPhilosophers.quote,
      owner_id: rand(1..10),
      description: Faker::Hipster.paragraph_by_chars(characters: 300, supplemental: false)
    })
    end

    5.times do
        FollowGoal.create({
        follower_id: rand(1..20),
        goal_id: rand(1..5)
        })
    end

# u1 = User.create(name:"ricky", location:"ny")
# u2 = User.create(name:"sekou", location:"ny")

# g1 = Goal.create(name:"WeightLoss", owner_id: 1)

# fg = FollowGoal.create(follower_id: 2, goal_id: 1)

# p1 = Post.create(content:"hello", goal_id: 1, user_id: 2)