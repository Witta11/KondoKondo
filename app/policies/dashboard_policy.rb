 class DashboardPolicy < Struct.new(:user, :dashboard)
   class Scope
     def resolve
       scope
     end
   end
  def index?
     true
  end
end
