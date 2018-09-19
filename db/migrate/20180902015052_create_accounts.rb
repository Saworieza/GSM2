class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name #, unique: true
      t.text :description

      t.timestamps
    end
  end
end
