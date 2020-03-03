class FollowGoal < ApplicationRecord
    belongs_to :follower, foreign_key: :follower_id, class_name: "User"
    belongs_to :followed_goals, foreign_key: :goal_id, class_name: "Goal"
end
