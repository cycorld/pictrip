class DestinationsController < ApplicationController
    layout 'map'
    
    def index
    end
    
    def new
        @dest = Destination.new
    end
end
