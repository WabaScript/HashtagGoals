class ChangeDateTypeinGoals < ActiveRecord::Migration[6.0]
  def change
    change_column :goals, :start_date, :string
    change_column :goals, :end_date, :string
  end
end
