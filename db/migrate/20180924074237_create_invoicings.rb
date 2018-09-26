class CreateInvoicings < ActiveRecord::Migration[5.2]
  def change
    create_table :invoicings do |t|
      t.belongs_to :paymentvoucher, foreign_key: true
      t.belongs_to :contractorinvoice, foreign_key: true

      t.timestamps
    end
  end
end
