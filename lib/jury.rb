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
        votes = Hash[finalists.map {|finalist| [finalist, 0]}]
        # randomly add member votes to finalists
        @members.each do |member|
            pick = votes.keys.sample 
            votes[pick] += 1
            puts "#{member.to_s} gave vote for #{pick}".yellow
        end
        
        votes
    end
    
    def report_votes final_votes
        final_votes.each {|finalist, votes| puts "#{finalist} got #{votes} votes".blue}
    end
    
    def announce_winner final_votes
        # find a hash with max value, and take key(finalist object) of the hash
        final_votes.max_by {|finalist, votes| votes}[0]
    end
end