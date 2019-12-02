class TeamsController < ApplicationController
    # def new
    #     @team = Team.new
    # end
    # def show
    #     @team = Team.find(params[:id])
    # end
    # def create
    #     @team = Team.new(team_params)
    #     @team.save
    #     redirect_to team_path(@team)
    # end
    # def edit
    #     @team = Team.find(params[:id])
    # end
    def update
        @team = Team.find(params[:id])
        @team.update(team_params)
        redirect_to team_path(@team)
    end
    # private
    # def team_params
    #     params.require(:team).permit(:name)
    # end
    

end
