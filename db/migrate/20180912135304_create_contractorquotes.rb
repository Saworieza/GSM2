class CreateContractorquotes < ActiveRecord::Migration[5.2]
  def change
    create_table :contractorquotes do |t|
      t.text :number
      t.date :date
      t.integer :amount
      t.text :description
      t.belongs_to :site, foreign_key: true
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
