class AddPhoneToSharedStories < ActiveRecord::Migration[5.1]
  def change
    add_column :shared_stories, :phone, :string
  end
end
