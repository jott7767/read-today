class CreateFamilyGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :family_groups do |t|
      t.string  :name,            null:    false
      t.boolean :tickets_sent,    default: false
      t.boolean :able_to_attend,  default: false
      t.string  :street,          null:    false
      t.string  :city,            null:    false
      t.string  :state_code,      default: "UT"
      t.string  :zip,             null:     false
      t.integer :children,        default: 1

      t.timestamps
    end
  end
end
