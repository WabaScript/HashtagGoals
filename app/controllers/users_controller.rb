class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
    before_action :find_user, only: [:show, :edit, :update, :destroy]
  
    # def index 
    # #   @users = User.all
    #   # render :index
    # end 
  
    def show 
      @goals = @user.goals
      @followed_goals = @user.followed_goals
      # render :show
    end
    
    def new 
      @user = User.new
      @errors = flash[:errors]
    #   render :new 
    end 
    
    def create 
      @user = User.create(user_params)

      if @user.valid?
        redirect_to  @user
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to new_user_path 
      end 
      
    end 
    
    def edit 
      # @user = User.find(params[:id])
      if current_user != @user 
        redirect_to current_user
      else
        render :edit
      end
    end 
    
    def update
      # @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user.id)
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to edit_user_path(@user)
      end  
  
    end 
    
    def destroy 
      # @user = user.find(params[:id])
      @user.destroy 
      flash[:notice] = 'You deleted your account!'

      redirect_to users_path
    end 
  
    private 
  
    def user_params 
      params.require(:user).permit(:name, :password, :email, :location)
    end 
  
    def find_user
      @user = User.find(params[:id])
    end 
end