class CreateLikes < ActiveRecord::Migration[8.1]
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.integer :likeable_id
      t.string :likeable_type
      t.timestamps
    end

    add_index :likes, [ :likeable_id, :likeable_type ]
  end
end
