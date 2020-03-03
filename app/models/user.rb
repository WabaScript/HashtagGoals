class User < ApplicationRecord
    # has_many :followed_goals
    # has_many :follow_goals, foreign_key: :follower_id,
    has_many :follow_goals, foreign_key: :follower_id
    has_many :followed_goals, through: :follow_goals

    has_many :posts

    has_many :goals, foreign_key: :owner_id
  end