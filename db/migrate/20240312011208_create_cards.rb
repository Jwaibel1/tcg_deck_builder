class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :card_name
      t.string :card_image
      t.string :card_type
      t.string :card_typing
      t.string :card_subtype
      t.string :card_attribute
      t.integer :card_rank
      t.integer :card_atk
      t.integer :card_def
      t.string :card_effect

      t.timestamps
    end
  end
end
