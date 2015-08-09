class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :user_id
      t.text :content
      t.datetime :deleted_at

      t.timestamps null: false
    end

    add_index :comments, [:commentable_id, :commentable_type]
  end
end
