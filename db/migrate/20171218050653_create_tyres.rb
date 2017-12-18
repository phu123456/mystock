class CreateTyres < ActiveRecord::Migration[5.1]
  def change
    create_table :tyres do |t|
      t.string :serial
      t.string :brand
      t.integer :truck_id
      t.string :position
      t.string :status

      t.timestamps
    end
  end
end
