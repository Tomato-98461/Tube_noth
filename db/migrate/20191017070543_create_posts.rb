class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :tube_id ,null: false, foreign_key: true
      t.integer :user_id ,null: false, foreign_key: true

      t.timestamps
    end
  end
end
