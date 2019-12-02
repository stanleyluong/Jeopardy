class RoundsController < ApplicationController
    def index
    end
    def new
        @round = Round.new
    end
    def show
        @round = Round.find(params[:id])
        @categories = @round.categories
        session[:round] = params[:id]
        @host = Host.find(session[:host_id])
    end
  
end
