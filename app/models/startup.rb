class Startup
    attr_reader :name,:founder,:domain 
    @@all = []
    
    def initialize (name,founder,domain) 
    @name = name 
    @founder = founder
    @domain = domain 
    @@all << self
    
    end

    def self.all
        @@all
    end

    def pivot(domain,name)
        self.domain = domain
        self.name = name 
        
    end
    
   
    
    def self.find_by_founder(founder)

        FoundingRound.new(self,founder)
    end

    def self.domains(domain)

        Startup.all.map{|s|s.domain}
    end




end


