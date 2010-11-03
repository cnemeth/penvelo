class Club::DocumentsController < ApplicationController

  # acl9 access control
  access_control do
    allow logged_in
  end

  # GET /club/documents
  # GET /club/documents.xml
  def index
    @documents = Dir.glob("public/docs/*")
  end

  def download
  end

end

