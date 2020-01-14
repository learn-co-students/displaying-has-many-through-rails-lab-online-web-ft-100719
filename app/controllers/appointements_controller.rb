class AppointementsController < ApplicationController
    def show 
        @appointement = Appointement.find_by(params[:id])
    end 
end
