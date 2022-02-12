class SeriesParser 
    def initialize(series)
      @series = series
    end

    def parse
        @series.map {|attributes| Series.new(attributes)}

    end

end