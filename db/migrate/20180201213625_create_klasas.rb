class CreateKlasas < ActiveRecord::Migration[5.1]
  def change
    create_table :klasas do |t|
      t.string :name
      t.text :description
      t.string :specialatk

      t.timestamps
    end
  end
end
