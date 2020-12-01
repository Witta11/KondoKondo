class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    # authorize @chatroom
    authorize @message
    # raise
  end


def create
  @chatroom = Chatroom.new
  @kondo = Kondo.find(params[:kondo_id])
  # @chatroom.kondo_id = params[:kondo_id]
  @chatroom.kondo = @kondo
  @chatroom.user = current_user
  authorize @chatroom
  @existing_chatroom = Chatroom.where(kondo_id: params[:kondo_id], user_id: current_user.id )
  if @existing_chatroom.length > 0
    redirect_to chatroom_path(@existing_chatroom[0])
  else
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end
end

  # private
  # def chatroom_params
  #   params.require(:chatroom).permit(:user_id, :kondo_id)
  # end
end
