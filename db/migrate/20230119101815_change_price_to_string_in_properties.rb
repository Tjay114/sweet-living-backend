class ChangePriceToStringInProperties < ActiveRecord::Migration[7.0]
  def change
    change_column :properties, :price, :string
  end
end
