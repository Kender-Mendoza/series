class AddCoverPageImageToSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :series, :cover_page_image, :string
  end
end
