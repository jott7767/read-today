class RemoveDefaultFromActivityMonth < ActiveRecord::Migration[5.1]
  def change
    change_column_default :activities, :month, nil
  end
end
