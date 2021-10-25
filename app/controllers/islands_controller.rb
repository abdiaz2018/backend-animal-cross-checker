class IslandsController < ApplicationController
    def create 
        island = Island.create(island_params)
        if island
            render json: island 
        else
            render json: {error: 'This island could not be created'}
        end
    end

    def edit 
        island = Island.find(params[:id])
        island.update(island_params)
    end

    def index 
        islands = Island.all
        render json: islands
    end

    def show 
        island = Island.find(params[:id])
        render json: island
    end

    def destroy
        island = Island.find(params[:id])
        island.destroy
        render json: {message: 'Island Checklist Deleted'}
    end

    private

    def island_params
        params.require(:island).permit(:name, :fossils, :glowing_spot, :able_shop, :nooks_cranny,:collect_fruit, :shake_trees)
    end
end