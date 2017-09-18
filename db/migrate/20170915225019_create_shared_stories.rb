class CreateSharedStories < ActiveRecord::Migration[5.1]
  def change
    create_table :shared_stories do |t|
      t.string :name
      t.integer :age
      t.text :body

      t.timestamps
    end
  end
end
