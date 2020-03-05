class FollowGoalsController < ApplicationController

    def new
        @fg = FollowGoal.new
        @cu = current_user.id
    end

    def create
        @fg = FollowGoal.create(fg_params)
        @goal = fg_params[:goal_id]
        if @fg.valid?
            redirect_to goal_path(@goal)

        else
            flash[:errors] = @fg.errors.full_messages
            redirect_to new_fg_path
        end
    end

    # def destroy 
    #     @fg = FollowGoal.find_by(follower_id: current_user.id)
    #     @fg.destroy 
    #     flash[:notice] = 'You unfollowed this goal!'
  
    #     redirect_to goals_path
    #   end 

    def fg_params
        params.require(:follow_goal).permit(:follower_id, :goal_id)
    end

end