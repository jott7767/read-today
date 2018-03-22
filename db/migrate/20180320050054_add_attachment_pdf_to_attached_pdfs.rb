class AddAttachmentPdfToAttachedPdfs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :attached_pdfs do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :attached_pdfs, :pdf
  end
end
