class DashboardController < ApplicationController

  def index
    @kondos = current_user.kondos
    skip_policy_scope
  end
end
