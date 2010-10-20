class Admin::HomeController < ApplicationController

  # acl9 access control
  access_control do
    allow :webmaster, :president
  end

  layout 'admin'

  def index
  end

end

