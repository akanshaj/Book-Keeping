class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :transaction_type
      t.float :amount
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
