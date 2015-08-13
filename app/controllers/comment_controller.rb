class CommentController < ApplicationController
    def create
        Comment.create(user_id: current_user.id,
                       dispatch_id: params[:dispatch_id],
                       content: params[:content])
        redirect_to :back
    end
end
