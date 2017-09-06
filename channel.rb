require 'byebug'

class Channel
    attr_reader :name, :subscribers, :uploads

    # require a "name" key
    # Channel.new(last_name: 'lala')
    # required keyword :last_name
    # unknown keyword :last_name
    # Channel.new(last_name: 'lala')
    # def initialize(name: 'foo', last_name:)
    #     @name = name
    # end
    
    # require 1 argument, in which WE refer it as "name"
    # def initialize(name = 'foo')
    #     @name = name
    # end
    
    # Channel.new
    def initialize(name:)
        @name = name
        @subscribers = []
        @uploads = []
    end
    
    def add_subscriber(subscriber)
        subscribers << subscriber
    end
    
    def upload(video)
        uploads << video
    end
    
    def views
        count_views = 0
        uploads.each do |video|
            count_views += video.views
        end
        count_views
    end
end