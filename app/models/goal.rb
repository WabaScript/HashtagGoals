class Goal < ApplicationRecord
    has_many :follow_goals, foreign_key: :goal_id
    has_many :followers, through: :follow_goals

    has_many :posts

    belongs_to :owner, :class_name => "User", foreign_key: :owner_id
end
