class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def split
    @location = params[:location]
  end
end
