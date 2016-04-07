class Contestant
    attr_accessor :name
    
    def initialize name
        @name = name
    end 
    
    def to_s
        @name || super
    end
end