class User < ApplicationRecord
    has_many :follow_goals, foreign_key: :follower_id
    has_many :followed_goals, through: :follow_goals

    has_many :posts

    has_many :goals, foreign_key: :owner_id

    validates :name, :password, :email, :location, presence: true
    validates :password, length: { in: 6..20 }
    validates :email, :name, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    
  end