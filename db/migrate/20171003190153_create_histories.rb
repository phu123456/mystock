class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.text :name
      t.integer :current
      t.integer :previous
      t.integer :quantity
      t.date :update_date
      t.text :updater
      t.text :plate
      t.text :discription
      t.integer :price

      t.timestamps
    end
  end
end
