class CreateNewsStories < ActiveRecord::Migration[5.1]
  def change
    create_table :news_stories do |t|
      t.string :title
      t.text :body
      t.date :air_date

      t.timestamps
    end
  end
end
