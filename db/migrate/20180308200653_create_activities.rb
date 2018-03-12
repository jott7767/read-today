class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name,      null: false, default: ''
      t.string :month,     null: false, default: ''
      t.text :description, null: false, default: '' 

      t.timestamps
    end
  end
end
