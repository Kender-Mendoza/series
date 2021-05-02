class AddPrequelAndSequelToSeries < ActiveRecord::Migration[6.1]
  def change
    add_reference :series, :prequel, null: true, foreign_key: {to_table: :Series}
    add_reference :series, :sequel, null: true, foreign_key: {to_table: :Series}
  end
end
