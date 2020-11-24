class KondoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index
      return true
    end

    def create?
      return true
    end

    def update?
      record.user == user
    end

    def destroy?
      record.user == user
    end

  end
end
