class AddTotalValueToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :totalValue, :decimal, :precision => 8, :scale => 2
  end
end
