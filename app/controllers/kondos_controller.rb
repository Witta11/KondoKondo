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

  def new
    @kondo = Kondo.new
    authorize @kondo
  end

  def create
    @kondo = Kondo.new(set_params)
    @kondo.user = current_user
    @kondo.save
    if @kondo.save
      redirect_to kondos_path(@kondo)
    else
      render :new
    end
    authorize @kondo
  end

private

  def set_params
    params.require(:kondo).permit(:title, :description, :location, :picture)
  end
end
