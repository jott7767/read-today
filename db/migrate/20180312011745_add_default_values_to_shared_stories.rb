class AddDefaultValuesToSharedStories < ActiveRecord::Migration[5.1]
  def change
    change_column :shared_stories, :phone, :string, default: ""
    change_column :shared_stories, :email, :string, default: ""
  end
end
