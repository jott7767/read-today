class RemoveAttachedPdfsFromConnects < ActiveRecord::Migration[5.1]
  def change
    remove_reference :connects, :attached_pdf, foreign_key: true
  end
end
