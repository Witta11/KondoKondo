class KondosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    if params[:location].present?
      @kondos = policy_scope(Kondo).near(params[:location], 1, units: :km).order(created_at: :desc)
    else
      @kondos = policy_scope(Kondo).order(created_at: :desc)
    end
    @kondo = @kondos.sample
  end

  def random
    if params[:location].present?
      @kondos = policy_scope(Kondo).near(params[:location], 1, units: :km).order(created_at: :desc)
    else
      @kondos = policy_scope(Kondo).order(created_at: :desc)
    end
    @kondo = @kondos.sample
    render layout: false
    authorize @kondo
  end

  def new
    @kondo = Kondo.new
    if params[:location]
      @location = params[:location]
      @kondo.location = @location
    end
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

  def edit
    @kondo = Kondo.find(params[:id])
    authorize @kondo
  end

  def update
    @kondo = Kondo.find(params[:id])
    if @kondo.update(set_params)
      redirect_to kondos_path(@kondo)
    else
      render :edit
    end
    authorize @kondo
    # no need for app/views/restaurants/update.html.erb
  end

  def reserve
    @kondo = Kondo.find(params[:kondo_id])
    authorize @kondo
    @kondo.reserved = !@kondo.reserved
    @kondo.save!
    redirect_to dashboard_path
  end

  def destroy
    @kondo = Kondo.find(params[:id])
    @kondo.user = current_user
    authorize @kondo
    @kondo.delete
    redirect_to kondos_path # redirect has to change to dashboard_path in upcoming version
  end

  private

  def set_params
    params.require(:kondo).permit(:title, :description, :location, :image, :reserved)
  end
end
