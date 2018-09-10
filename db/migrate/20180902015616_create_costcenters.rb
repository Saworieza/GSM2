class CreateCostcenters < ActiveRecord::Migration[5.2]
  def change
    create_table :costcenters do |t|
      t.bigint :number
      t.text :details
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
