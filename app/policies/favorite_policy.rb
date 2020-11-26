class FavoritePolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope.all
      end
    end

  def index?
    true
  end

  def create?
    !user.owner?(record)
  end

    # def update?
    #   record.user == user
    # end

  def destroy?
    record.user == user
  end
end
