class AddFieldsToAmenities < ActiveRecord::Migration
  def change
    add_column :amenities, :code, :string
    add_column :amenities, :icon, :string
    add_index :amenities, :code
    remove_index :amenities, :name
  end
end
