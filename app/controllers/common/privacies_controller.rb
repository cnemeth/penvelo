class Common::PrivaciesController < ApplicationController

  def index
    @clubs = Club.all

    @privacy = @clubs[0].privacy
  end

end

