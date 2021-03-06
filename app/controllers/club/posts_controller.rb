class Club::PostsController < ApplicationController

  # acl9 access control
  before_filter :load_posts, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow logged_in
  end

  # GET /post/posts
  # GET /post/posts.xml
  def index
    @posts = Post.find(:all, :order => "created_at DESC")


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /post/posts/1
  # GET /post/posts/1.xml
  def show
    @post = Post.find(params[:id])
    #comment = @post.comments.build

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /post/posts/new
  # GET /post/posts/new.xml
  def new
    @post = Post.new
    #comment = @post.comments.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /post/posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /post/posts
  # POST /post/posts.xml
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(club_posts_path, :notice => 'post was successfully created.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post/posts/1
  # PUT /post/posts/1.xml
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to(club_posts_path, :notice => 'post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end



private

  def load_posts
    @posts = Post.all
  end

end

