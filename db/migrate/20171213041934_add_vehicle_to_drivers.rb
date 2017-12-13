class AddVehicleToDrivers < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :vehicle, :string
  end
end
