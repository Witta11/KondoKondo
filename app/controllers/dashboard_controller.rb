class DashboardController < ApplicationController
  def show
    @kondos = current_user.kondos
    @favorites = current_user.favorites
    @chatrooms = Chatroom.where(user_id: current_user.id )
    #map all users kondos to array of ids
    ids = @kondos.map { |k|  k.id }
    # query DB to find all chatrooms where my items are the subject
    @chatrooms_my_item = Chatroom.where(kondo_id: ids )
    #merge @chatrooms with @chatrooms_my_item == combined active record association 
    @chatrooms = @chatrooms.or(@chatrooms_my_item)
    authorize :dashboard, :show?
  end
end