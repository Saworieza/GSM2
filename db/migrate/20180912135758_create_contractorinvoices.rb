class CreateContractorinvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :contractorinvoices do |t|
    	t.text :invoice_to
      t.string :unit
      t.text :description
      t.string :number
      t.date :date
      
      t.belongs_to :milestone, foreign_key: true

      t.timestamps
    end
  end
end
