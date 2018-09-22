class Relations < ActiveRecord::Migration[5.2]
  def change
    add_reference :customerquotes, :site, foreign_key: true
    add_reference :customerpos, :site, foreign_key: true
    add_reference :contractorinvoices, :site, foreign_key: true

    add_reference :invoices, :milestone, foreign_key: true
    add_reference :invoices, :stage, foreign_key: true

    add_reference :contractorinvoices, :stage, foreign_key: true

    add_reference :contractorinvoices, :contractorpo, foreign_key: true
    add_reference :contractorinvoices, :contractorquote, foreign_key: true

    add_reference :contractorquotes, :contractorpo, foreign_key: true

    add_reference :contractorquotes, :contractor, foreign_key: true

    add_reference :contractors, :site, foreign_key: true

    add_reference :paymentvouchers, :stage, foreign_key: true
  end
end
