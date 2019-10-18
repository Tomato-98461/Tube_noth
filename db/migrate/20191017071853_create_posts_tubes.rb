class CreatePostsTubes < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_tubes do |t|
      t.integer :post_id, null: false, foreign_key: true
      t.integer :tube_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
