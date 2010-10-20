class Admin::HomeController < ApplicationController

  # acl9 access control
  access_control do
    allow :site_admin, :executive, :director
  end

  layout 'admin'

  def index
  end

end

