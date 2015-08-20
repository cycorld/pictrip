class DispatchesController < ApplicationController
    layout 'map'
    def index
        @destination = Destination.find(params[:id])
    end
    
    def create
        date = DateTime.civil(*params[:dispatch].sort.map(&:last).map(&:to_i))
        Dispatch.create(destination_id: params[:destination_id],
                        title: params[:title],
                        diary: params[:diary],
                        emotion: params[:emotion],
                        when: date,
                        lat: params[:lat],
                        lng: params[:lng],
                        picture: params[:picture]
                        )
        d = Destination.find(params[:destination_id])
        total_lat = 0
        total_lng = 0
        d.dispatches.each do |i|
            total_lat += i.lat.to_f
            total_lng += i.lng.to_f
        end
        avg_lat = total_lat / d.dispatches.count
        avg_lng = total_lng / d.dispatches.count
        d.lat = avg_lat.to_s
        d.lng = avg_lng.to_s
        d.save
        redirect_to :back
    end
    
    def show
        @dispatch = Dispatch.find(params[:id])
    end
end