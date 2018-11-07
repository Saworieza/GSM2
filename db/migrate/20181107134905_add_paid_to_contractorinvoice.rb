class AddPaidToContractorinvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :contractorinvoices, :paid, :boolean, default: false
  end
end
