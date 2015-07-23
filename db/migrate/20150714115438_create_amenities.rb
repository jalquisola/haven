class CreateAmenities < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
      t.string :name, index: true
      t.timestamps null: false
    end

    create_table :properties_amenities, id: false do |t|
      t.belongs_to :property, index: true
      t.belongs_to :amenity, index: true
    end
  end
end
