class CreateAttachedPdfs < ActiveRecord::Migration[5.1]
  def change
    create_table :attached_pdfs do |t|
      t.timestamps
    end
  end
end
