class ChangeMonthToIntegerOnConnects < ActiveRecord::Migration[5.1]
  def change
    change_column :connects, :month, 'integer USING CAST(month AS integer)'
  end
end
