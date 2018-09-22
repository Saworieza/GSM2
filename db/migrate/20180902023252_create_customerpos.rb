class CreateCustomerpos < ActiveRecord::Migration[5.2]
  def change
    create_table :customerpos do |t|
      t.string :number
      t.date :date
      t.integer :amount
      t.belongs_to :customerquote, foreign_key: true
      t.belongs_to :scope, foreign_key: true

      t.timestamps
    end
  end
end
