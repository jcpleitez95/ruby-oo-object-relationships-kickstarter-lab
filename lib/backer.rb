class Backer
    
    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def back_project (project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select{|project| project.backer == self}.map(&:project)
    end
    
end


# josh = Backer.new("josh")
# project1 = Project.new("ruby")
# prjtbckr = ProjectBacker.new(project1, josh)

# josh.backed_projects


