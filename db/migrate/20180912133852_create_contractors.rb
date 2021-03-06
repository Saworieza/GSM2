class CreateContractors < ActiveRecord::Migration[5.2]
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :email
      t.integer :telephone
      t.string :pin
      t.text :description
      t.belongs_to :status, foreign_key: true

      t.timestamps
    end
  end
end
