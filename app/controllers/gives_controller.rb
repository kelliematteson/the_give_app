class GivesController < ApplicationController
    def index
        gives = Give.all 
        render json: {status: 200, gives: gives}
    end

    def show
        give = Give.find(params[:id])
        render json: {status: 200, give: give}
    end
    
    def create 
        give = Give.new(give_params)

        if give.save
            render(json: { give: give }, status: 201)
        else
            render(json: { give: give }, status: 422)
        end
    end

    private
    def give_params
        params.required(:give).permit(:give_name, :give_description, :give_image, :giver)
    end


end