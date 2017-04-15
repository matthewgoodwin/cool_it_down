class ZonePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    lounge_owner?
  end

  def destroy?
    lounge_owner?
  end

 private

 def lounge_owner?
  record.lounge.user == user
  # ^ @zone.lounge.user == current_user
  # ^^ from the `find_order` before_action in the orders#controller
 end

end
