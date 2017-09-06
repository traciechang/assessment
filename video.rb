class Video
    attr_reader :name, :length, :views, :age_restriction
    
    # keyword arguments
    def initialize(name:, length:, age_restriction: nil, views: 0)
        @name = name
        @length = length
        @age_restriction = age_restriction
        @views = views
    end
    
    # ? => yes or no
    # ? => true or false
    
    # if age_restriction => "are you truthy?" => anything, true, false, nil, 1, 'foo'
        # logic here
        
    # if age_restricted? => true or false
    
    def age_restricted?
        # age_restriction: integer || nil
        # not not age_restriction
        
        # is_nil = nil
        # !is_nil => false
        # !!is_nil => true
        
        !!age_restriction
        
        # return true if age_restriction
        # false
    end
    
    def add_view
        @views += 1
    end
    
end