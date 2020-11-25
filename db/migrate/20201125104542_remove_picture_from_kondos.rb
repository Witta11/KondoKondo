class RemovePictureFromKondos < ActiveRecord::Migration[6.0]
  def change
    remove_column :kondos, :picture
  end
end
