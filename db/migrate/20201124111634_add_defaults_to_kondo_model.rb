class AddDefaultsToKondoModel < ActiveRecord::Migration[6.0]
  def change
    change_column_default :kondos, :reserved, false
    change_column_default :kondos, :active, true
  end
end
