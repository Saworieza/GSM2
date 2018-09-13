class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.string :milestone_type
      t.integer :phase
      t.integer :percentage

      t.timestamps
    end
  end
end
