class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    def create
        new_spice = Spice.create(spice_param)
        render json: new_spice, status: :created
    end

    def update
        if spice 
            spice.update(spice_param)
            render json: spice
        end
    end

    def destroy 
        
        spice.destroy
    end

    private
    def spice
        Spice.find_by(id: params[:id])
    end

    def spice_param
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
