class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :client_name
      t.text :content
      t.string :country_of_residence
      t.string :info
      t.string :avatar_url
    end
  end
end
