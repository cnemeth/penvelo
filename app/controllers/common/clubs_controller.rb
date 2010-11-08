class Common::ClubsController < ApplicationController

  def index
    @clubs = Club.all
    @pv_club = @clubs[0]


  end

end

