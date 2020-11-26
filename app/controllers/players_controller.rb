class PlayersController < ApplicationController

    def index
        @players = Player.all 
        render json: @players
    end

    def create
        @player = Player.new(player_params) 
        if @player.save
            render json: @player
        else
            render json: {error: 'Error creating player'}
        end
    end

    def show
        @player = Player.find(params[:id])
        render json: @player
    end

    def destroy
        @player = Player.find(params[:id]) 
        @player.destroy
    end

    private

    def player_params
        params.require(:player).permit(:name, :school, :year, :scout)
    end

end
