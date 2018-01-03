class CreateGreases < ActiveRecord::Migration[5.1]
  def change
    create_table :greases do |t|
      t.integer :truck_id

      t.timestamps
    end
  end
end
