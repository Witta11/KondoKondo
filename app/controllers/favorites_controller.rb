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
    if params[:controller] == "dashboard" && params[:action] == "index"
      redirect_to dashboard_index_path
    else params[:controller] == "kondos" && params[:action] == "index"
      redirect_to kondos_path
    end
    # get "/kondos" => redirect_to kondos_path
    # get "/dashboard" => redirect_to dashboard_index_path
  end
end
