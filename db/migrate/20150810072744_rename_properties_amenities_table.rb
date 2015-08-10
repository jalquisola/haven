class RenamePropertiesAmenitiesTable < ActiveRecord::Migration
  def change
    rename_table :properties_amenities, :amenities_properties
  end
end
