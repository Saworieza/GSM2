class CreateContractorinvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :contractorinvoices do |t|
    	t.text :invoice_to
      t.text :pin
      t.string :unit
      t.text :description
      t.bigint :number
      t.date :date
      t.integer :amount
      t.belongs_to :milestone, foreign_key: true

      t.timestamps
    end
  end
end
