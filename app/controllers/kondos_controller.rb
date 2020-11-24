class KondosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @kondos = policy_scope(Kondo).order(created_at: :desc)
  end
end
