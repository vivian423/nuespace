class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def new?
    user.booking_ids.include?(record.booking.id)
  end

  def create?
    new?
  end

  def destroy?
    user.record == user
  end
end
