class GivesController < ApplicationController
    def index
      render(json: { gives: Give.all })
    end
  
    def show
      render(json: Give.find(params[:id]))
    end
  
    def create
        Give.create(params[:give])
        puts "this is params: #{params[:give]}"
        
    end
  
    def update
      give = Give.find(params[:id])
      give.update(give_params)
      render(json: { give: give })
    end
  
    def destroy
      give = Give.destroy(params[:id])
      render(status: 204)
    end
  
    private
  
    def give_params
      params.required(:give).permit(:give_name, :give_description, :give_image, :giver)
    end
  end