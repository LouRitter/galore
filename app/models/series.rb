class Series
    def initialize(attributes)
        @attributes = attributes
    end

    def title
        @attributes['title']
    end


    def photo
        @attributes['photos'][0]["small_url"] unless @attributes['photos'].nil?
    end

    def about
        @attributes['about']
    end

    def price
        @attributes['price_integer']
    end

end