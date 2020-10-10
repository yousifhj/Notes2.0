class SessionsController < ApplicationController

    def home
    end 

    def destroy 
        session.clear
        redirect_to_root_path
    end

end
