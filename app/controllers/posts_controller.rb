class PostsController < ApplicationController
    # before_action :find_user, only: [:show, :edit, :update]
    before_action :find_post, only: [:edit, :update, :destroy]

    def index 
    # #   @posts = Post.all
    #   # render :index
    end 
  
    def show 
      # render :show
    end
    
    def new 
      @post = Post.new
      @errors = flash[:errors]
    #   render :new 
    end 
    
    def create 
      @post = Post.create(post_params)
      @goal = post_params[:goal_id]
    
      if @post.valid?
        redirect_to goal_path(@goal)
      else
        flash[:errors] = @post.errors.full_messages
        redirect_to goal_path(@goal)
      end 
      
    end 
    
    def edit 
      # @post = Post.find(params[:id])
      # render :edit
    end 
    
    def update
      # @post = Post.find(params[:id])
  
      if @post.update(post_params)
        redirect_to post_path(@post.id)
      else
        flash[:errors] = @post.errors.full_messages
        redirect_to edit_post_path(@post)
      end  
  
    end 
    

    def destroy 
      @goal = params[:goal_id]
      @post.destroy 
      redirect_to goal_path(@goal)
    end 
  
    private 
  
    def post_params 
      params.require(:post).permit(:user_id, :goal_id, :content, :img_url)
    end 
  
    def find_post
      @post = Post.find(params[:id])
    end 
end
