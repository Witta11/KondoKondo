class DashboardController < ApplicationController

  def show
    @kondos = current_user.kondos
    @favorites = current_user.favorites
    @chatrooms = Chatroom.where(user_id: current_user.id )
    authorize :dashboard, :show?
  end
end
