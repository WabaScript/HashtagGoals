class ChangeNameColumnInGoals < ActiveRecord::Migration[6.0]
  def change
    rename_column :goals, :name, :title
  end
end
