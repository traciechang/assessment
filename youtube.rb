class Youtube
    def subscribe(user:, channel:)
        channel.add_subscriber(user)
        user.subscribe_to(channel)
    end
    
    def view(user:, video:)
        if video.age_restriction.nil? || user.age >= video.age_restriction
            video.add_view
            user.watch(video)
        else
            raise "This video is restricted to viewers #{video.age_restriction} and older"
        end
    end
end

# why are we initializing a bunch of "Youtube"s?
# Youtube has no ivars, or attributes
# we're not relying on this Youtube class, to have ANY data on it
# API

# service class
# class methods
# Youtube.subscribe(user:, channel:)
# Youtube.view(user:, channel:)

# sign as user
# you as the user, subscribe to channel
    # you have added a channel to your subscriptions
    
# as the channel
    # the channel has a new subscriber
    

# SOLID principles of OOP

# S of SOLID
# Single-Responsibily-Principle