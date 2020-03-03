class AddEndDateToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :end_date, :date
  end
end
