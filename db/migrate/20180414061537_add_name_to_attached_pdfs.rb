class AddNameToAttachedPdfs < ActiveRecord::Migration[5.1]
  def change
    add_column :attached_pdfs, :name, :string
  end
end
