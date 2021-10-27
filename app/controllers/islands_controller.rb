class IslandsController < ApplicationController
    def create 
        island = Island.create(
            name: island_params[:islandName],
            fossils: false,
            glowing_spot: false,
            able_shop: false,
            nooks_cranny: false,
            collect_fruit: false,
            shake_trees: false 
            
        )
        if island.save
            island_id = island.id
            island_params[:villagers].each do |v|
                Villager.create(
                    name: v[:villager],
                    talked_to: v[:talked_to],
                    island_id: island_id
                )
            end
            render json: island 
        else
            render json: {error: 'This island could not be created'}
        end
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
        # params.require(:island).permit(:name, :fossils, :glowing_spot, :able_shop, :nooks_cranny,:collect_fruit, :shake_trees)
        params.permit(
            :islandName, :fossils, :glowing_spot, :able_shop, :nooks_cranny, :collect_fruit, :shake_trees,
            villagers: [
                :talked_to,
                :villager,
                :island_id
            ]
        )
    end
end