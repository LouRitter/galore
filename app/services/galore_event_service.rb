require 'faraday/net_http'

class GaloreEventService < ApplicationService

    def initialize(args)
        @count = args[:count]
        @page = args[:page]
    end
    def call
        conn = Faraday.new()
        res = conn.get("https://api.getgalore-staging.com/v1/events", {page: @page, count: @count}, {"Api-Key": ENV['GALORE_API_KEY']})
        return res.body
    end
end
