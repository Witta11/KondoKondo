class DropFavourites < ActiveRecord::Migration[6.0]
  def change
    drop_table :favourites
  end
end
