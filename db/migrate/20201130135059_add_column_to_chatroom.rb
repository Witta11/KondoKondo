class AddColumnToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_index :chatrooms, [:user_id, :kondo_id], :unique => true
  end
end
