class AddNewFieldsToSerie < ActiveRecord::Migration[6.1]
  def change
    add_column :series, :serie_type, :string
    add_column :series, :state, :string
    add_column :series, :number, :integer
    add_column :series, :synopsis, :text
    add_column :series, :quantity_episodes, :integer
    add_column :series, :aired, :date
  end
end

