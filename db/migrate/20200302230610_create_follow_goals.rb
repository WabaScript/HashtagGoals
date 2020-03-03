class CreateFollowGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :follow_goals do |t|
      t.integer :follower_id
      t.integer :goal_id

      t.timestamps
    end
  end
end
