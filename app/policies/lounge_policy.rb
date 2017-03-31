class LoungePolicy < ApplicationPolicy
  # rails g pundit:policy lounge
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end
end
