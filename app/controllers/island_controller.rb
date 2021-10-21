class IslandController < ApplicationController
    def create 
        island = Island.create(island_params)
    end
    def index 
        islands = Island.all
        render json: islands
    end

    private

    def island_params
        params.require(:island).permit(:name, :fossils, :glowing_spot, :able_shop, :nooks_cranny,:collect_fruit, :shake_trees, :villager1, :villager2, :villager3, :villager4, :villager5, :villager6, :villager7, :villager8, :villager9, :villager10)
    end
end