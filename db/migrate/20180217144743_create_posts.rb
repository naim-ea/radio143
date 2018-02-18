class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, limit: 150
      t.text :subtitle, null: false
      t.text :content, null: false

      t.references :user, null: false, foreign_key: { name: 'post_user' }

      t.timestamps
    end
  end
end
