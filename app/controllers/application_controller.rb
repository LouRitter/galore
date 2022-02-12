class ApplicationController < ActionController::Base

    def events
        @page = params[:page] ||= 1
        @count = params[:count] ||= 15
        @events = JSON.parse(GaloreEventService.call({count: @count, page: @page}))
        @total = @events["total"]
        @last_page = @events["last_page"]
        @series = SeriesParser.new(@events["series"]).parse
        @activities = ActivityParser.new(@events["activities"]).parse 
    end


end
