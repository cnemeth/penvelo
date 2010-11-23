class Common::MembersController < ApplicationController


  def index
  #  @users = User.all
  # simple search by user last name
    @users = User.last_name_like_all(params[:search].to_s.split).ascend_by_last_name
  end

end

