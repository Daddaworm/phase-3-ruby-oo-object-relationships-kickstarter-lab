require 'pry'

class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end


    def self.all
        @@all
    end


    def add_backer(backer)
        # is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project
        backer = ProjectBacker.new(self, backer)
    end


    def backers
        # returns an array of backers associated with this Project instance
        ProjectBacker.all.select {|project_backer| project_backer.project == self}.map {|project_backer| project_backer.backer}
            # binding.pry
    end

end