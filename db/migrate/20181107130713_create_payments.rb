class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :contractor, foreign_key: true
      t.integer :amount
      t.string :contractorinvoice_ids

      t.timestamps
    end
  end
end
