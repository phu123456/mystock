class AddCategoryToDriver < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :category, :string
  end
end
