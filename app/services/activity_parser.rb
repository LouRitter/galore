class ActivityParser 
    def initialize(activities)
      @activities = activities
    end

    def parse
        @activities.map {|attributes| Activity.new(attributes)}
    end

end