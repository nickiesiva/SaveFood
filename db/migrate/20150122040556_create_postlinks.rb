class CreatePostlinks < ActiveRecord::Migration
  def change
    create_table :postlinks do |t|
      t.string :title
      t.string :link
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :postlinks, :users
    add_index :postlinks, [:user_id, :created_at]
  end
end
