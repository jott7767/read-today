class IndexAttachedPdfsOnOwner < ActiveRecord::Migration[5.1]
  def change
    add_reference :attached_pdfs, :owner, index: true, polymorphic: true
  end
end
