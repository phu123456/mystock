class AddLevelToStorages < ActiveRecord::Migration[5.1]
  def change
    add_column :storages, :level, :integer
  end
end
