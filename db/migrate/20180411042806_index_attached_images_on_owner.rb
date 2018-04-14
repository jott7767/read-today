class IndexAttachedImagesOnOwner < ActiveRecord::Migration[5.1]
  def change
    add_reference :attached_images, :owner, index:true, polymorphic: true
  end
end
