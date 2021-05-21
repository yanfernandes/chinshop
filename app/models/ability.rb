class Ability
  include CanCan::Ability
  
  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can [:create, :destroy], Product
    end
  end
end