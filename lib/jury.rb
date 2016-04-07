class Jury
    attr_accessor :members
    
    def initialize
        @members = Array.new
    end
    
    def add_member contestant
        members.push contestant
    end
    
    def cast_votes finalists
        a =  Hash[finalists.map {|f| [f.to_s, members.join("\n")]}]
        
        puts a
        
        return a
    end
end