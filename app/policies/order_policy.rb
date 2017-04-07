class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def update?
    owner? # || lounge_owner?
  end

  def destroy?
    owner? # || lounge_owner?
  end

  private

  def owner?
    record.user == user
  end

  # def lounge_owner?
  #   record.lounge.user == user
  # end

end
