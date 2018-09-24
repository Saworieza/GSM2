class CreatePaymentvouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :paymentvouchers do |t|
      t.string :number
      t.date :date
      t.integer :amount
      t.string :payment_by
      t.string :vat_no
      t.string :pin_no

      
      # t.belongs_to :contractor, foreign_key: true
      # t.belongs_to :milestone, foreign_key: true
      # t.belongs_to :site, foreign_key: true
      t.belongs_to :contractorinvoice, foreign_key: true

      t.timestamps
    end
  end
end
