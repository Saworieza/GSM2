class CreateContractorinvoicesPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :contractorinvoices_payments do |t|

      t.timestamps
    end
    add_reference :contractorinvoices_payments, :payment, foreign_key: true
    add_reference :contractorinvoices_payments, :contractorinvoice, foreign_key: true
  end
end
