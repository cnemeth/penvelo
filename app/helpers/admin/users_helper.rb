module Admin::UsersHelper
  def roles
    Role.all.collect {|role|[role.name, role.id]}
  end
end

