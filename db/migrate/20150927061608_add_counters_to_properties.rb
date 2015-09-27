class AddCountersToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :view_count, :integer, default: 0
    add_column :properties, :favourite_count, :integer, default: 0
    add_column :properties, :comments_count, :integer, default: 0
  end
end
