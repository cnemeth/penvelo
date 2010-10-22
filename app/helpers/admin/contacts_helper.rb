module Admin::ContactsHelper

  def user_by_name
    User.find(params[:id]).name
  end
end

