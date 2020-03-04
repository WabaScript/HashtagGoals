class GoalsController < ApplicationController 

    def index
        @goals = Goal.all
      end
    
      def show
        @goal = Goal.find(params[:id])
        @owner = @goal.owner
        @posts = @goal.posts

        # @post_owner = User.find(@posts.user_id)
        #   User.find(Goal.second.posts.first.user_id)
      end

    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.create(goal_params)
        # @owner = Goal.owner.find(params[:id])
        if @goal.valid?
            redirect_to goal_path(@goal)

        else
            flash[:errors] = @goal.errors.full_messages
            redirect_to new_goal_path
        end
    end

    def edit 
        @goal = Goal.find(params[:id])
        render :edit
      end 
      
      def update
        @goal = Goal.find(params[:id])
        if @goal.update(goal_params)
          redirect_to goal_path(@goal.id)
        else
          flash[:errors] = @goal.errors.full_messages
          redirect_to edit_goal_path(@goal)
        end  
    
      end 
      
      def destroy 
        # @goal = Goal.find(params[:id])
        @goal.destroy 
        redirect_to goals_path
      end 


    private

    def goal_params

        params.require(:goal).permit(:owner_id, :title, :description, :start_date, :end_date)

    end

end