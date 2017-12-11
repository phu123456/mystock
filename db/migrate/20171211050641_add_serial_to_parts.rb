class AddSerialToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :serial, :string
  end
end
