class AddPositionToStorages < ActiveRecord::Migration[5.1]
  def change
    add_column :storages, :position, :string
  end
end
