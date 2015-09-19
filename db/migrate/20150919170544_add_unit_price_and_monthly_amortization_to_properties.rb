class AddUnitPriceAndMonthlyAmortizationToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :unit_price, :integer
    add_column :properties, :monthly_amort, :integer
  end
end
