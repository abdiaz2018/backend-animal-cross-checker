class Island Controller < ApplicationController
    def index 
        islands = Island.all
        render json: islands
    end
end