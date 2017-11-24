class CreateSharedStories < ActiveRecord::Migration[5.1]
  def change
    create_table :shared_stories do |t|
      t.string :name
      t.integer :age
      t.string :head
      t.text :body
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
