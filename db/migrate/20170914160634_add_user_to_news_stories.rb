class AddUserToNewsStories < ActiveRecord::Migration[5.1]
  def change
    add_reference :news_stories, :user, foreign_key: true
  end
end
