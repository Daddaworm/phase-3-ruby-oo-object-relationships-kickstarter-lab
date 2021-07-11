require 'pry'

class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end


    def back_project(project)
        # is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer
        ProjectBacker.new(project, self)
    end


    def backed_projects
        # returns an array of projects associated with this Backer instance
        ProjectBacker.all.select {|project_backer| project_backer.backer == self}.map {|project_backer| project_backer.project}
        
        # ALTERNATE WAY
        # ProjectBacker.all.select do |project_backer|
        #     project_backer.backer == self
        # end.map do |project_backer|
        #     project_backer.project
        # end
    end



end
