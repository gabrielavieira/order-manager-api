class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :batch, index: true
      t.string :reference
      t.string :purchaseChannel
      t.string :clientName
      t.string :address
      t.string :deliveryService

      t.timestamps
    end
  end
end
