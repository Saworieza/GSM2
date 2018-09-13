# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

milestones = Milestone.create([{ phase: 'One'}, { phase: 'Two'}, { phase: 'Three'}, { phase: 'Four'}])
stages = Stage.create([{milestone_id: 1, percentage: 30}, {milestone_id: 1, percentage: 55}, {milestone_id: 1, percentage: 15}, {milestone_id: 2, percentage: 30}, {milestone_id: 2, percentage: 27.5}, {milestone_id: 2, percentage: 27.5}, {milestone_id: 3, percentage: 90}, {milestone_id: 3, percentage: 10}, {milestone_id: 4, percentage: 100}])

