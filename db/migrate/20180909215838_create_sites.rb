class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :number
      t.integer :tower_height
      t.belongs_to :status, foreign_key: true
      t.belongs_to :scope, foreign_key: true
      t.belongs_to :town, foreign_key: true
      # t.belongs_to :customerpo, foreign_key: true
      # t.belongs_to :customerquote, foreign_key: true
      t.belongs_to :region, foreign_key: true

      t.timestamps
    end
  end
end
