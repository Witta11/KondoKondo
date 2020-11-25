class KondosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    if params[:query].present?
      # @kondos = Kondo.__elasticsearch__.search(
        #   query: {
          #     multi_match: {
            #       query: params[:query],
            #       fields: ['location']
            #     }
            #   }
            # ).results
      @kondos = policy_scope(Kondo).where(location: params[:query]).order(created_at: :desc)
    else
      @kondos = policy_scope(Kondo).order(created_at: :desc)
    end
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
  
  def destroy
    @kondo = Kondo.find(params[:id])
    @kondo.user = current_user
    authorize @kondo
    @kondo.delete
    redirect_to kondos_path # redirect has to change to dashboard_path in upcoming version
  end
  
  private

  def set_params
    params.require(:kondo).permit(:title, :description, :location, :image)
  end
end
