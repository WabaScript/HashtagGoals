class GoalsController < ApplicationController
        
    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.create(goal_params)
        if @goal.valid?
            redirect_to goal_path(@goal)

        else
            flash[:errors] = @goal.errors.full_messages
            redirect_to new_goal_path
        end
    end

    def goal_params
        params.require(:goal).permit(:owner_id, :title, :description, :timeline)
    end

end