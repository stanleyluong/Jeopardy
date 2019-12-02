class CluesController < ApplicationController
    
    def index
    end

    def show
        @clue = Clue.find(params[:id])
        session[:clue] = params[:id]
        @host = Host.find(session[:host_id])
    end

    def answer
        @clue = Clue.find(params[:id])
        session[:clue] = params[:id]
        @host = Host.find(session[:host_id])
        # byebug
    end

    
end
