class SampleNameChangeColumnType < ActiveRecord::Migration[5.1]
  def change
      change_column(:parts, :category, :string)
  end
end
