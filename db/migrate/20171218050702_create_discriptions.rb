class CreateDiscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :discriptions do |t|
      t.date :occur
      t.string :detail
      t.integer :tyre_id

      t.timestamps
    end
  end
end
