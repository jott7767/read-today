class AddActiveToActivities < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :active, :boolean, default: false
  end
end
