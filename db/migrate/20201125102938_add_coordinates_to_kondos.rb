class AddCoordinatesToKondos < ActiveRecord::Migration[6.0]
  def change
    add_column :kondos, :latitude, :float
    add_column :kondos, :longitude, :float
  end
end
