class Common::ClubsController < ApplicationController

  def index
    @clubs = Club.all
    @pv_club = @clubs[0]

    @club_officers = nil

    @board_members = nil

    @club_directors = nil

  end

end

