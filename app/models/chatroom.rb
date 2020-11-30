class Chatroom < ApplicationRecord
    has_many :messages, dependent: :destroy
    belongs_to :kondo
    belongs_to :user
    
end
