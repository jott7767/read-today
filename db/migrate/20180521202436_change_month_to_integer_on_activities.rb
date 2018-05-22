class ChangeMonthToIntegerOnActivities < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :month, 'integer USING CAST(month AS integer)'
  end
end
