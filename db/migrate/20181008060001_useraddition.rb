class Useraddition < ActiveRecord::Migration[5.2]
  def change
  	add_reference :accounts, :user, foreign_key: true
  	add_reference :costcenters, :user, foreign_key: true
  	add_reference :statuses, :user, foreign_key: true
  	add_reference :scopes, :user, foreign_key: true
  	add_reference :milestones, :user, foreign_key: true
  	add_reference :regions, :user, foreign_key: true
  	add_reference :towns, :user, foreign_key: true
  	add_reference :customerquotes, :user, foreign_key: true
  	add_reference :customerpos, :user, foreign_key: true
  	add_reference :sites, :user, foreign_key: true
  	add_reference :invoices, :user, foreign_key: true
  	add_reference :contractors, :user, foreign_key: true
  	add_reference :contractorquotes, :user, foreign_key: true
  	add_reference :contractorpos, :user, foreign_key: true
  	add_reference :contractorinvoices, :user, foreign_key: true
  	# add_reference :paymentvouchers, :user, foreign_key: true
  	add_reference :stages, :user, foreign_key: true
  	add_reference :contracts, :user, foreign_key: true
  	# add_reference :invoicings, :user, foreign_key: true
  end
end
