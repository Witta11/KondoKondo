class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @kondo = Kondo.find(params[:kondo_id])
    authorize @favorite
    # authorize @kondo
    @favorite.user = current_user
    @favorite.kondo = @kondo
    @favorite.save
    redirect_to kondos_path(:location => params[:location], :kondo_id => @kondo.id)
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if params[:kondo_id]
    @kondo = Kondo.find(params[:kondo_id])
    end
    # authorize @kondo
    authorize @favorite
    @favorite.destroy
    if params[:redirect_to] == "dashboard"
      redirect_to dashboard_path
    end
    if params[:location]
      redirect_to kondos_path(:location => params[:location], :kondo_id => @kondo.id)
    end
  end
end
