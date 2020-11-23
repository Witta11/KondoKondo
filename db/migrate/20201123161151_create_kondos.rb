class CreateKondos < ActiveRecord::Migration[6.0]
  def change
    create_table :kondos do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :picture
      t.boolean :reserved
      t.boolean :active
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
