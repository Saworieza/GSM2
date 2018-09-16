class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.integer :amount
      t.belongs_to :contractor, foreign_key: true
      t.belongs_to :site, foreign_key: true
      t.belongs_to :contractorpo, foreign_key: true

      t.timestamps
    end
  end
end
