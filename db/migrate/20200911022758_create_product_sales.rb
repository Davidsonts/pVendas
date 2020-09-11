class CreateProductSales < ActiveRecord::Migration[6.0]
  def change
    create_table :product_sales do |t|
      t.references :product, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :value

      t.timestamps
    end
  end
end
