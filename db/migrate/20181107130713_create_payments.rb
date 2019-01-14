class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
    	t.string :number
    	t.date :date
    	t.integer :tax
    	t.string :paymentmode
    	t.string :pvno
    	t.string :pin
      t.references :contractor, foreign_key: true
      t.integer :amount
      t.string :contractorinvoice_id

      t.timestamps
    end
  end
end
