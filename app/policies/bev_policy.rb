class BevPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    return true
  end

  def create?
    lounge_owner?
  end

  private

  def lounge_owner?
    record.user == user
  end
end
