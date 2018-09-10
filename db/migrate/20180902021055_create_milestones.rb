class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.string :milestone_type

      t.timestamps
    end
  end
end
