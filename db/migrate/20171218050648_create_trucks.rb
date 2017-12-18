class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :plate
      t.string :category
      t.string :model

      t.timestamps
    end
  end
end
