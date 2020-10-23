class NotebooksController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @notebook = Notebook.new 
    end 

    def create
        @notebook = current_user.notebooks.build(notebook_params)
        if @notebook.save
          redirect_to notebooks_path
        else
          render :new
        end
      end

    private 

    def notebook_params 
        params.require(:notebook).permit(:title, :content)
    end 

end
