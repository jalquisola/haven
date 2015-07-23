class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.integer :position
      t.integer :property_id

      t.timestamps null: false
    end

    add_index :images, [:property_id, :position]
  end
end
