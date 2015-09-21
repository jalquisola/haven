class UpdateColumnInUnitTypes < ActiveRecord::Migration
  def change
    add_column :unit_types, :floor_area_min, :decimal, precision: 6, scale: 2
    add_column :unit_types, :floor_area_max, :decimal, precision: 6, scale: 2
  end
end
