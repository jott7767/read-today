class CreateConnects < ActiveRecord::Migration[5.1]
  def change
    create_table :connects do |t|
      t.string :month,  null: false
      t.string :year,   null: false
      t.boolean :early, null: false 

      t.timestamps
    end
  end
end
