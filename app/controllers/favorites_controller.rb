class FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new
    authorize @favorite
    @favorite.user = current_user
    @favorite.kondo = Kondo.find(params[:kondo_id])
    @favorite.save
    redirect_to kondos_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    authorize @favorite
    @favorite.destroy
    if params[:redirect_to] == "dashboard"
      redirect_to dashboard_path
    else
      redirect_to kondos_path
    end
  end
end
