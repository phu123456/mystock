class AddTruckModelToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :truck_model, :string
  end
end
