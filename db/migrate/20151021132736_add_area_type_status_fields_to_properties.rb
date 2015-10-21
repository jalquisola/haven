class AddAreaTypeStatusFieldsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :min_area, :decimal, precision: 6, scale: 2
    add_column :properties, :max_area, :decimal, precision: 6, scale: 2
    add_column :properties, :property_type, :integer
    add_column :properties, :status, :integer
    add_column :properties, :turnover, :integer
    add_column :properties, :rating, :integer
  end
end
