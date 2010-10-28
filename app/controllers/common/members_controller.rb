class Common::MembersController < ApplicationController


  def index
    @users = User.all
  end

end

