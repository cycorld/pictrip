class DispatchesController < ApplicationController
    layout 'map'
    def index
        @destination = Destination.find(params[:id])
    end
end
