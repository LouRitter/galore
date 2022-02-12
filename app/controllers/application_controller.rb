class ApplicationController < ActionController::Base

    def events
        @page = params[:page] 
        @count = params[:count]
        @events = JSON.parse(GaloreEventService.call({count: @count, page: @page}))
        @total = @events["total"]
        @last_page = @events["last_page"]
        @series = SeriesParser.new(@events["series"]).parse
        @activities = ActivityParser.new(@events["activities"]).parse 
    end


end
