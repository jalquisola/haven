class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image_url
      t.string :banner_url
      t.integer :position

      t.timestamps null: false
    end
  end
end
