class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # geocoded_by :location
    # after_validation :geocode, if: :will_save_change_to_location?
  end

  def split
    @location = params[:query]
  end
end
