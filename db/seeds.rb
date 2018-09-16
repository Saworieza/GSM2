# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

milestones = Milestone.create([{ phase: 'One'}, { phase: 'Two'}, { phase: 'Three'}, { phase: 'Four'}])
stages = Stage.create([{milestone_id: 1, percentage: 30}, {milestone_id: 1, percentage: 55}, {milestone_id: 1, percentage: 15}, {milestone_id: 2, percentage: 30}, {milestone_id: 2, percentage: 27.5}, {milestone_id: 2, percentage: 27.5}, {milestone_id: 3, percentage: 90}, {milestone_id: 3, percentage: 10}, {milestone_id: 4, percentage: 100}])
regions = Region.create([{ name: 'Nairobi'}, { name: 'Central'}, { name: 'Eastern'}, { name: 'North Eastern'}, { name: 'Coast'}, { name: 'Rift Valley'}, { name: 'Nyanza'}, { name: 'Western'}])
towns = Town.create([{ name: "Githurai", classification: "Urban", region_id: 1}, {name: "Rongai", classification: "Urban", region_id: 6}, {name: "Kileleshwa", classification: "Urban", region_id: 1}, {name: "Kisumu", classification: "Urban", region_id: 6},  {name: "Migori", classification: "Rural", region_id: 7}])
scopes = Scope.create([{scope_type: "Scope 1"}, {scope_type: "Scope 2"}, {scope_type: "Scope 3"}])
statuses = Status.create([{state: 'Active'}, {state: 'Inactive'}, {state: 'Dormant'}, {state: 'Banned'}])

accounts = Account.create([{name: 'Safaricom', description: "Lorem Ipsum dolor sit amet."}, {name: 'Telkom', description: "Lorem Ipsum dolor sit amet."}, {name: 'Airtel', description: "Lorem Ipsum dolor sit amet."}])
costcenters = Costcenter.create([{number: 123456789, details: "Lorem Ipsum dolor sit amet.", account_id: 1 }, {number: 1234556487, details: "Lorem Ipsum dolor sit amet.", account_id: 1 }, {number: 1298566789, details: "Lorem Ipsum dolor sit amet.", account_id: 2 }, {number: 9965456789, details: "Lorem Ipsum dolor sit amet.", account_id: 3 }
sites = Site.create([{ name: "Githurai", number: 12, tower_height: 12, status_id: 1, scope_id: 1, town_id: 1, region_id: 2}, { name: "Rongai", number: 12, tower_height: 12, status_id: 1, scope_id: 1, town_id: 2, region_id: 1}])
customerquotes = Customerquote.create([{name: "Quote for Githurai", date: "2018-09-16", amount: 10202, costcenter_id: 1, scope_id: 1, site_id: 1}, {name: "Quote for Rongai", date: "2018-09-16", amount: 103502, costcenter_id: 1, scope_id: 2, site_id: 2}])	
customerpos = Customerpo.create([{number: 24556521, date: "2018-09-16", amount: 10000, customerquote_id: 1, scope_id: 1, site_id: 1}, {number: 245545621, date: "2018-09-16", amount: 10100, customerquote_id: 2, scope_id: 2, site_id: 2}])
invoices = Invoice.create([{number: 213456879, date: "2018-09-16", amount: 254200, status_id: 1, scope_id: 1, customerpo_id: 1, site_id: 1, milestone_id: 1, stage_id: 1}, {number: 213456879, date: "2018-09-16", amount: 500200, status_id: 3, scope_id: 2, customerpo_id: 2, site_id: 2, milestone_id: 3, stage_id: 2}])
contractors = Contractor.create([{name: "George Electricals", description: "Lorem Ipsum dolor sit amet", status_id: 1, site_id: 1}, {name: "Mwangi & Sons", description: "Lorem Ipsum dolor sit amet", status_id: 1, site_id: 2}, {name: "Kavirondo Engineering", description: "Lorem Ipsum dolor sit amet", status_id: 3, site_id: 2}])
contractorquotes = Contractorquote.create([{number: 12323132145, date: "2018-09-16", amount: 12121212, description: "Lorem Ipsum dolor sit amet", site_id: 1, customerpo_id: 1, contractor_id: 1}, {number: 99985132145, date: "2018-09-16", amount: 1202453, description: "Lorem Ipsum dolor sit amet", site_id: 2, customerpo_id: 2, contractor_id: 2}, ])
contractorpos = Contractorpo.create([{number: 12345678, date: "2018-09-16", amount: 2012125, description: "Lorem Ipsum dolor sit amet", contractorquote_id: 1}, number: 123425478, date: "2018-11-16", amount: 54678954, description: "Lorem Ipsum dolor sit amet", contractorquote_id: 2])
contractorinvoices = Contractorinvoice.create([{number: 1234564, date: "2018-09-16", amount: 5687985, milestone_id: 1, site_id: 1, stage_id: 1, contractorpo_id: 1}, {number: 55524564, date: "2018-11-16", amount: 5687985, milestone_id: 2, site_id: 2, stage_id: 2, contractorpo_id: 2}])
paymentvouchers = paymentvoucher.create([{number: 564879, date: "2018-10-22", amount: 5648955, contractor_id: 1, milestone_id: 1, stage_id: 1, site_id: 1, contractorinvoice_id: 1}, {number: 564879, date: "2018-10-22" , amount: 5648955, contractor_id: 3, milestone_id: 1, stage_id: 3, site_id: 2, contractorinvoice_id: 2}])

