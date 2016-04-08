class Tribe
    attr_accessor :name, :members
    
    def initialize params={}
        @name = params[:name]
        @members = params[:members]
        
        puts "Tribe #{@name} created"
    end
    
    def tribal_council immune:
        candidates = @members.select { |a| a != immune }
        @members.delete(candidates.sample)
    end
    
    def to_s
        @name || super
    end
end