class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :client_id
      t.integer :count

      t.timestamps null: false
    end
  end
end
