class Admin::UsersController < ApplicationController

  # acl9 access control
  before_filter :load_users, :only => [:index, :show, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/users
  # GET /admin/users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /admin/users/1
  # GET /admin/users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    #raise @user.inspect
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(admin_users_url, :notice => 'User profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/users/1
  # DELETE /admin/users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(admin_users_url, :notice => 'User was successfully deleted.') }
      format.xml  { head :ok }
    end
  end

private

  def load_users
    @users = User.all
  end





end

