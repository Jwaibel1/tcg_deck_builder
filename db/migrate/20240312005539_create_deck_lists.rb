class CreateDeckLists < ActiveRecord::Migration[7.1]
  def change
    create_table :deck_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :deck_id, null: false
      t.string :deck_name

      t.timestamps
    end
  end
end
