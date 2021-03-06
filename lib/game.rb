class Game
    attr_accessor :tribes
    
    def initialize *tribes
        @tribes = tribes
    end
    
    def add_tribe tribe
        @tribes.push(tribe)
    end
    
    def clear_tribes
        @tribes.clear()
    end
    
    def immunity_challenge
        @tribes.sample
    end
    
    def merge new_tribe_name
        # better way to do it?
        merged_members = []
        @tribes.each do |t|
            merged_members += t.members
        end
        
        clear_tribes
        add_tribe Tribe.new({name: new_tribe_name, members: merged_members})
        @tribes.first
    end
    
    def individual_immunity_challenge
        @tribes.sample.members.sample
    end
end