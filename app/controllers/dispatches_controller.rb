class DispatchesController < ApplicationController
    layout 'map'
    def index
        @destination = Destination.find(params[:id])
    end
    
    def create
        Dispatch.create(destination_id: params[:destination_id],
                        title: params[:title],
                        diary: params[:diary],
                        emotion: params[:emotion],
                        when: params[:date],
                        lat: params[:lat],
                        lng: params[:lng],
                        picture: params[:picture]
                        )
        redirect_to :back
    end
    
    def show
        @dispatch = Dispatch.find(params[:id])
    end
end