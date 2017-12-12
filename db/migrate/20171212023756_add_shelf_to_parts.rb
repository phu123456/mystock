class AddShelfToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :shelf, :string
  end
end
