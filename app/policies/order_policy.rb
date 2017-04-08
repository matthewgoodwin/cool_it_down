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
    owner_or_lounge_owner?
  end

  def destroy?
    owner_or_lounge_owner?
  end

  private

  def owner_or_lounge_owner?
    record.user == user || record.lounge.user == user
    # ^ @order.user == current_user || @order.lounge.user == current_user
    # ^^ from the `find_order` before_action in the orders#controller
  end
end
