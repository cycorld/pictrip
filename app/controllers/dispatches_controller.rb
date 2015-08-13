class DispatchesController < ApplicationController
    layout 'map'
    def index
        @destination = Destination.find(params[:id])
    end
    
    def create
        Dispatch.create(title: params[:title],
                        diary: params[:diary],
                        emotion: params[:emotion],
                        when: params[:date]
                        )
    end
end
