class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.decimal :total_sales
      t.references :order, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
