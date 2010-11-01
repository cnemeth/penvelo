class UsersController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  before_filter :set_user

  def new
    @user = User.new
    contact = @user.contacts.build
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account for user #{@user.name} was successfully created!"
      redirect_back_or_default account_url
    else
      render :action => :new
    end
  end

  def show
    @user = @current_user

  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account for user #{@user.name} was succesfuly updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

 private

  def set_user
    @user = current_user
  end

end

