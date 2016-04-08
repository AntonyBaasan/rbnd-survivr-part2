class Jury
    attr_accessor :members
    
    def initialize
        @members = Array.new
    end
    
    def add_member contestant
        members.push contestant
    end
    
    # creates votes hash by the finalists amount
    def cast_votes finalists
        # create vote by input finalist
        votes = Hash[finalists.map {|f| [f, 0]}]
        # randomly add member votes to finalists
        @members.each do|member|
            pick = votes.keys.sample 
            votes[pick] += 1
            puts "#{member} gave vote for #{pick}"
        end
        
        votes
    end
    
    def report_votes final_votes
        final_votes.each {|k,v| puts "#{k} got #{v} votes"}
    end
    
    def announce_winner final_votes
        # find a hash with max value, and take key(finalist object) of the hash
        final_votes.max_by {|f, v| v}[0]
    end
end