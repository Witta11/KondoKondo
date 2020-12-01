class AddColumnsToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :user, null: false, foreign_key: true
    add_reference :chatrooms, :kondo, null: false, foreign_key: true
  end
end
