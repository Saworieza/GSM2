class CreateContractorpos < ActiveRecord::Migration[5.2]
  def change
    create_table :contractorpos do |t|
      t.string :number
      t.date :date
      t.integer :amount
      t.text :description
      t.belongs_to :contractorquote, foreign_key: true

      t.timestamps
    end
  end
end
