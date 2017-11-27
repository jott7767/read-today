class AddEmailToSharedStories < ActiveRecord::Migration[5.1]
  def change
    add_column :shared_stories, :email, :string
  end
end
