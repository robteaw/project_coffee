class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.decimal :sub_total
      t.decimal :total_amount
      t.decimal :tax
      t.datetime :order_date

      t.timestamps
    end
  end
end
