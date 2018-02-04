class CreatePostacs < ActiveRecord::Migration[5.1]
  def change
    create_table :postacs do |t|
      t.string :name
      t.integer :lvl
      t.integer :maglvl
      t.integer :atk
      t.integer :def
      t.integer :magic
      t.integer :speed
      t.references :klasa, foreign_key: true

      t.timestamps
    end
	add_index :postacs, [:klasa_id, :created_at]
  end
end
