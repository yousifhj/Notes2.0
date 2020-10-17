class NotebooksController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new 
        @notebook = Notebook.new 
    end 
end
