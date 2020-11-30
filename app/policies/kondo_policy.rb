class KondoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def reserve?
  record.user == user
  end

  def random?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
