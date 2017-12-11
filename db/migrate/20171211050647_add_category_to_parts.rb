class AddCategoryToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :category, :integer
  end
end
