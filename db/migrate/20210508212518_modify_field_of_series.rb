class ModifyFieldOfSeries < ActiveRecord::Migration[6.1]
  def change
    remove_column :series, :number
    remove_column :series, :serie_type
    remove_column :series, :state
    add_reference :series, :serie_type, foreign_key: true
    add_reference :series, :state, foreign_key: true
  end
end
