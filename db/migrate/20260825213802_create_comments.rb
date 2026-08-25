class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :comment_author, foreign_key: { to_table: :users }
      t.belongs_to :comment_post, foreign_key: { to_table: :posts }
      t.timestamps
    end
  end
end
