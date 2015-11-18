class AddEnabledAndFeaturedToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :enabled, :boolean, default: false
    add_column :properties, :featured, :integer, default: 0

    add_index :properties, :enabled
    add_index :properties, :featured
  end
end
