class UpdateInfoToFeatures < ActiveRecord::Migration
  def change
    change_column :features, :info, :text
  end
end
