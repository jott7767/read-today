class CreateAttachedImages < ActiveRecord::Migration[5.1]
  def change
    create_table :attached_images do |t|

      t.timestamps
    end
  end
end
