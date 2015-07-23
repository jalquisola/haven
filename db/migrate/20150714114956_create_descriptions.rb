class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.text :title
      t.text :subtitle
      t.text :info
      t.integer :property_id

      t.timestamps null: false
    end

    add_index :descriptions, [:property_id]
  end
end
