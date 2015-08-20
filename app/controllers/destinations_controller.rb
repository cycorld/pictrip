class DestinationsController < ApplicationController
    layout 'map'
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        #@destinations = Destination.all
        @destinations = Destination.where(is_public: true)
    end
    
    def new
        @dest = Destination.new
    end
    
    def create
        Destination.create(user: current_user,
                           title: params[:title],
                           is_public: params[:is_public])
        
        redirect_to destinations_path
    end
end
