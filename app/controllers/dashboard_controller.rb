class DashboardController < ApplicationController

  def show
    @kondos = current_user.kondos
    authorize :dashboard, :show?
  end
end
