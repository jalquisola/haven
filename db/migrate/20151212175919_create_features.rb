class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :info

      t.timestamps null: false
    end
  end
end
