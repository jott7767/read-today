class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :shared_stories, :head, :synopsis
  end
end
