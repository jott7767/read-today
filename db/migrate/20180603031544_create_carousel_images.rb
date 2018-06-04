class CreateCarouselImages < ActiveRecord::Migration[5.1]
  def change
    create_table :carousel_images do |t|
      t.boolean :active

      t.timestamps
    end
  end
end
