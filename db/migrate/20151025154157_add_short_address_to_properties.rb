class AddShortAddressToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :short_address, :string
  end
end
