class ZonePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    owner?
  end

  def destroy?
    owner?
  end

 private

 def owner?
  record.user == user || record.lounge.user == user
  # ^ @order.user == current_user || @order.lounge.user == current_user
  # ^^ from the `find_order` before_action in the orders#controller
 end

end
