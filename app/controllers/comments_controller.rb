class CommentsController < ApplicationController
    def create
        # Create a new comment
        # for the post from the current user
        @comment = current_user.comments.new(comment_params)
        #if !@comment.save
         #   flash[:notice] = @comment.errors.full_messages_to_sentence

    redirect_to post_path(params[:post_id])
    
    end

    def comment_params
        params.require(:comment).permit(:content).merge(post_id: params[:post_id])
    end
end
