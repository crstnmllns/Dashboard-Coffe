class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :name
      t.integer :amount
      t.datetime :date_time
      t.string :origin

      t.timestamps
    end
  end
end
