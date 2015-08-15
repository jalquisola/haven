class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :title
      t.string :salutation
      t.string :name
      t.string :country
      t.string :contact_no
      t.string :email
      t.text :content

      t.timestamps null: false
    end
  end
end
