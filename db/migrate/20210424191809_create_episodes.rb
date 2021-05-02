class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.float :number, unique: true, precision: 5, scale: 2
      t.time :duration
      t.string :name, unique: true
      t.date :aired
      t.belongs_to :serie

      t.timestamps
    end
  end
end
