class LoungePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # ^ `.all` is from the index action. scope gets the value of the policy
      # ^^ being called by the policy_scope in the `index` method
    end
  end
  def index?
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def receipts?
    owner?
  end

  def update?
    owner?
  end

  def destroy?
    owner?
  end

  private

  def owner?
    record.user == user
    # ^ same as: `record.user == user ? true : false`
    # ^^ @lounge.user == current_user
    # ^^^ from the `find_lounge` before_action on the lounges#controller
  end

end
