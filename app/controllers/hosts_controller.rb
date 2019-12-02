class HostsController < ApplicationController
    def new
        @host = Host.new
    end
    def show
        @host = Host.find(params[:id])
    end
    def create
        @host = Host.create(host_params)
        Team.create(name: "team1", host: @host)
        Team.create(name: "team2", host: @host)
        Team.create(name: "team3", host: @host)
        session[:host_id] = @host.id
        redirect_to host_path(@host)
    end
    def edit
        @host = Host.find(params[:id])
    end

    # def update
    #     byebug
    #     @host = Host.find(params[:id])
    #     if params[:name] == "team1"
    #         byebug
    #         @host.teams[0].winnings += params[:team1add].to_i
    #     elsif params[:name] == "team2"
    #         @host.teams[1].winnings += params[:value].to_i
    #     elsif params[:name] == "team3"
    #         @host.teams[2].winnings += params[:value].to_i
    #     end
    #     @host.save
    #     byebug
    #     # @host.update(host_params)
    #     redirect_to round_path(session[:round])
    # end

    def update_score
        @host = Host.find(params[:id])
        if params[:update][:name] == "team1"
            @host.teams[0].winnings += params[:update][:value].to_i
            @host.teams[0].save
        elsif params[:update][:name] == "team2"
            @host.teams[1].winnings += params[:update][:value].to_i
            @host.teams[1].save
        elsif params[:update][:name] == "team3"
            @host.teams[2].winnings += params[:update][:value].to_i
            @host.teams[2].save
        end
        @host.save
        redirect_to answer_clue_path(session[:clue])
    end
    
    private
    def host_params
        params.require(:host).permit(:username, :password, :password_confirmation)
    end
end