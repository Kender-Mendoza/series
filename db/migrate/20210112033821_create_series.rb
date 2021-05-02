class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :name
      t.string :cover_page

      t.timestamps
    end
  end
end
