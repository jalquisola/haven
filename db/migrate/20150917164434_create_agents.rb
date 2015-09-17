class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :avatar_url
      t.string :facebook_url
      t.string :email
      t.string :twitter_url
      t.string :google_plus_url

      t.timestamps null: false
    end
  end
end
