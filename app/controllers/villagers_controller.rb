class VillagersController < ApplicationController

    def villager_params
        params.require(:villager).permit(:name, :talked_to, :island_id)
    end
end