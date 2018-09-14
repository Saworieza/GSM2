class Relations < ActiveRecord::Migration[5.2]
  def change
    add_reference :customerquotes, :site, foreign_key: true
    add_reference :customerpos, :site, foreign_key: true
  end
end
