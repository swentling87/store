class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.string :name
      t.string :email
      t.float :total
      t.integer :zipcode
      t.boolean :order_placed

      t.timestamps null: false
    end
  end
end
