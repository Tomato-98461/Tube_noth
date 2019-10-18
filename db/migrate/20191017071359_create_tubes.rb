class CreateTubes < ActiveRecord::Migration[5.2]
  def change
    create_table :tubes do |t|
      t.string :title, null: false
      t.string :tag, null: false, unique: true
      t.string :thmb, null: false

      t.timestamps
    end
  end
end
