class Admin::UsersController < ApplicationController

  # acl9 access control
  before_filter :load_users, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/users
  # GET /admin/users.xml
  def index
    #@users = User.all

    # simple search
    @users = User.last_name_like_all(params[:search].to_s.split).ascend_by_last_name

    # used by current serach form
    #@search = User.search(params[:search])
    #@users = @search.paginate( :page => params[:page] )

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

  # GET /admin/users/new
  # GET /admin/users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # POST /admin/users
  # POST /admin/users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(admin_user_path(@user)) }
        flash[:notice] = "User profile for #{@user.name} was successfully created!"
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    #raise @user.inspect
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(admin_user_path) }
        flash[:notice] = "Account for user #{@user.name} was succesfuly updated!"
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

    if @user.contacts.present?
      @user.contacts.destroy
    end

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

