require 'faraday/net_http'

class GaloreEventService 


    def get_events
        conn = Faraday.new()
        res = conn.get("https://api.getgalore-staging.com/v1/events", {}, {"Api-Key": ENV['GALORE_API_KEY']})
  
        return res.body
    end
end
