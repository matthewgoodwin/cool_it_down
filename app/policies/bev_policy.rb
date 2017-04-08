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

  def update?
    lounge_owner?
  end

  def destroy
    lounge_owner?
  end

  private

  def lounge_owner?
    record.lounge.user == user
    # ^ @bev.lounge.user == current_user
    # ^ from the `find_lounge` before_action in the bevs#controller
  end
end
