class AddAttachmentImageToAttachedImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :attached_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :attached_images, :image
  end
end
