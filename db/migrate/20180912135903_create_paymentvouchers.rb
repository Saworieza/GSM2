class CreatePaymentvouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :paymentvouchers do |t|
      t.bigint :number
      t.belongs_to :site, foreign_key: true
      t.belongs_to :contractorinvoice, foreign_key: true

      t.timestamps
    end
  end
end
