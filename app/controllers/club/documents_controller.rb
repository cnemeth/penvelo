class Club::DocumentsController < ApplicationController

  # acl9 access control
  access_control do
    allow logged_in
  end

  attr_writer :current_document

  # GET /club/documents
  def index
    @documents = Dir.glob("public/assets/docs/*")

    #unless @current_document == nil
    #  download
    #end
  end

private

  def download
    send_file @current_document.to_s
  end

end

