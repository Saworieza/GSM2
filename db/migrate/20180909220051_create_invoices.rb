class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.bigint :number
      t.date :date
      t.integer :amount
      t.belongs_to :status, foreign_key: true
      t.belongs_to :scope, foreign_key: true
      t.belongs_to :customerpo, foreign_key: true
      t.belongs_to :site, foreign_key: true

      t.timestamps
    end
  end
end
