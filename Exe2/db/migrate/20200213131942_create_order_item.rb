class CreateOrderItem < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :item_price
      t.references :order, :product, foreign_key: true
    end
  end
end
