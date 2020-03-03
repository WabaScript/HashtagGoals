class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        @goal = post_params[:goal_id]
        if @post.valid?
            redirect_to goal_path(@goal)

        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_post_path
        end
    end

    def post_params
        params.require(:post).permit(:user_id, :goal_id, :content, :img_url)
    end
end
