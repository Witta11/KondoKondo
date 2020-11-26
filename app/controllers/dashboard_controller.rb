class DashboardController < ApplicationController

  def index
    @kondos = current_user.kondos
    @favorites = current_user.favorites
    skip_policy_scope
  end
end
