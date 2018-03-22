class CreateAttachedPdfs < ActiveRecord::Migration[5.1]
  def change
    create_table :attached_pdfs do |t|
      t.integer :owner_id

      t.timestamps
    end
  end
end
