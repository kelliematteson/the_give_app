class GivesController < ApplicationController
    def index
      render(json: { gives: Gife.all })
    end
  
    def show
      render(json: Gife.find(params[:id]))
    end
  
    def create
        give = Gife.create(gife_params)
        puts "this is params: #{params[:gife]}"
        render(json: give )
    end
  
    def update
      give = Gife.find(params[:id])
      give.update(gife_params)
      render(json: { gife: give })
    end
  
    def destroy
      id = params["id"]
      give = Gife.find(id)
      give.delete()
      render("Give deleted!")
    end
  
    private
  
    def gife_params
      params.required(:gife).permit(:give_name, :give_description, :give_image, :giver, :user_id)
    end
  end