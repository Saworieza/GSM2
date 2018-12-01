class CreatePaymentsInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :payments_invoices do |t|
      t.integer :payment_id
      t.integer :contractorinvoice_id
    end
  end
end
