class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.string :name
      t.decimal :floor_area
      t.integer :cost
      t.integer :amortization
      t.integer :reservation_fee
      t.integer :bathrooms
      t.integer :bedrooms
      t.text :info
      t.integer :property_id

      t.timestamps null: false
    end

    add_index :unit_types, :property_id
  end
end
