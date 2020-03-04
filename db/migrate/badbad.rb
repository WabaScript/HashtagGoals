class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :goals, :timeline, :start_date
  end
end
