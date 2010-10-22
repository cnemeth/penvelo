module Admin::UsersHelper

  def roles
    Role.all.collect {|role|[role.name, role.id]}
  end

  def user_contact(id)
    Contact.find(:first, :conditions => ["user_id = ?", "id"])
  end

end

