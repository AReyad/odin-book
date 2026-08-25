class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.belongs_to :post_author, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
