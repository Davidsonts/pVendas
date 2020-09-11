class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :client, null: false, foreign_key: true
      t.date :data

      t.timestamps
    end
  end
end
