class DashboardPolicy < Struct.new(:user, :dashboard)
  class Scope < Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end
  end

  def index?
    true
  end
end
