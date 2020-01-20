class UserPolicy < ApplicationPolicy

  def destroy?
    false
  end

end
