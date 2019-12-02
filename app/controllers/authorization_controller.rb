class AuthorizationController < ApplicationController
    def login
    end
    def verify
        @host = Host.find(params[:login][:username])
        if @host && @host.authenticate(params[:login][:password])
            redirect_to host_path(@host)
        else
            render :login
        end
    end

    def logout
        session.clear
        redirect_to new_host_path
    end
    


end
