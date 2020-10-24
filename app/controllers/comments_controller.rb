class CommentsController < ApplicationController
    
    def index 
        @comments = Comments.all
    end 
    
    def new 
        @comments = Comment.new 
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
        @comment = Comment.find_by(id: params[:id])
    end 

    def edit
        @comment = Comment.find_by(id: params[:id])
    end 


end
