class DashboardController < ApplicationController

  def show
    @kondos = current_user.kondos
    @favorites = current_user.favorites
    authorize :dashboard, :show?
  end
end
