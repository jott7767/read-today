class AddEmbedUrlToNewsStories < ActiveRecord::Migration[5.1]
  def change
    add_column :news_stories, :embed_url, :string 
  end
end
