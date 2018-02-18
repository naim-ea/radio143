class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|

      t.text :content, null: false

      t.references :user, null: false, foreign_key: { name: 'comment_user' }
      t.references :post, null: false, foreign_key: { name: 'post_comment' }

      t.timestamps
    end
  end
end
