class CreatePropertyFeatures < ActiveRecord::Migration
  def change
    create_table :property_features do |t|
      t.integer :property_id
      t.integer :feature_id
      t.timestamps null: false
    end
  end
end
