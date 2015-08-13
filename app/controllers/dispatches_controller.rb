class DispatchesController < ApplicationController
    layout 'map'
    def index
        @dispatches = Dispatch.all
    end
end
