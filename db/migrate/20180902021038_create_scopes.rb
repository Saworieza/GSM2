class CreateScopes < ActiveRecord::Migration[5.2]
  def change
    create_table :scopes do |t|
      t.string :scope_type

      t.timestamps
    end
  end
end
