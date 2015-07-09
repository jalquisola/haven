class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.integer :position
      t.references :property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
