class Common::LegalsController < ApplicationController

  def index
    @clubs = Club.all

    @legal = @clubs[0].legal
  end

end

