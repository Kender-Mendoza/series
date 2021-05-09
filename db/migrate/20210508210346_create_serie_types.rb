class CreateSerieTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :serie_types do |t|
      t.string :name, unique: true
      t.timestamps
    end
  end
end
