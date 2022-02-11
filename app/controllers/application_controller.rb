class ApplicationController < ActionController::Base

    def events
        @galore = GaloreEventService.new()
        @events = @galore.get_events
        render json: JSON.pretty_generate(JSON.parse(@events.to_s))
    end
end
