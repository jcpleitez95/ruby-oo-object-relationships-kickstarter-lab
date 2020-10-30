class Project
    @@all = []
    attr_accessor :title, :backer

    def initialize (title)
        @title = title
        @@all << self
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def backers
        ProjectBacker.all.select {|backer|backer.project ==self}.map(&:backer)
    end
    
end
