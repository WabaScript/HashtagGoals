class AddColumnsToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :description, :text
    add_column :goals, :timeline, :date
  end
end
