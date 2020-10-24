class CommentsController < ApplicationController
    def new 
        @comments = Comments.new 
    end 

    def create
        @comment = current_user.comments.build(comment_params)
        if @comment.save
          redirect_to comments_path
        else
          render :new
        end
    end

    def show 
    end 

    def edit
    end 


end
