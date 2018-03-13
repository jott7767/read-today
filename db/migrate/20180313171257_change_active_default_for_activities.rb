class ChangeActiveDefaultForActivities < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :active, :boolean, default: true
  end
end
