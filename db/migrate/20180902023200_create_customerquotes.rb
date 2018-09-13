class CreateCustomerquotes < ActiveRecord::Migration[5.2]
  def change
    create_table :customerquotes do |t|
      t.string :name
      t.date :date
      t.integer :amount
      t.belongs_to :costcenter, foreign_key: true
      t.belongs_to :scope, foreign_key: true

      t.timestamps
    end
  end
end
