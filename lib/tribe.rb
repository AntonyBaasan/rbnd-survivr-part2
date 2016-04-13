class Tribe
    attr_accessor :name, :members
    
    def initialize params={}
        @name = params[:name]
        @members = params[:members]
        
        puts "Tribe #{@name} created"
    end
    
    def tribal_council immune: nil
        candidates = @members.select { |a| a != immune }
        elim = @members.delete(candidates.sample)
        puts "Tribe #{@name} eliminated '#{elim}'"
        elim
    end
    
    def to_s
        @name || super
    end
end