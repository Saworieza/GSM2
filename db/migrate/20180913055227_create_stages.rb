class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.integer :percentage
      t.belongs_to :milestone, foreign_key: true

      t.timestamps
    end
  end
end
