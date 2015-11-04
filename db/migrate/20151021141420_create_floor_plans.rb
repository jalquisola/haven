class CreateFloorPlans < ActiveRecord::Migration
  def change
    create_table :floor_plans do |t|
      t.string :name
      t.string :image_url
      t.integer :property_id, index: true
    end
  end
end
