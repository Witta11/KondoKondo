class KondosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @kondos = policy_scope(Kondo).order(created_at: :desc)
  #   if params[:query].present?
  #     @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
  #   else
  #     @movies = Movie.all
  #   end
  end

  def destroy
    @kondo = Kondo.find(params[:id])
    @kondo.user = current_user
    authorize @kondo
    @kondo.delete
    redirect_to kondos_path # redirect has to change to dashboard_path in upcoming version
  end

end
