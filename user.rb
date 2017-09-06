require 'byebug'

class User
    attr_reader :name, :email, :age, :subscriptions, :history, :privacy
    
    def initialize(name:, email:, age:, privacy: false)
        @name = name
        @email = email
        @age = age
        @subscriptions = []
        @history = []
        @privacy = privacy
    end
    
    def subscribe_to(channel_name)
        subscriptions << channel_name unless subscriptions.include?(channel_name)
    end
    
    def watch(video)
        if !privacy
            if !history.include?(video)
                history.unshift(video)
            else
                history.delete(video)
                history.unshift(video)
            end
        end
    end
end