class MenuPolicy < ApplicationPolicy
  class Scope < Scope
    def index?
      true
    end

    def show?
      true
    end

    def resolve
      scope.all
    end
  end
end
