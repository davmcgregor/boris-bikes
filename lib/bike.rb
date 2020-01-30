class Bike
    attr_accessor :status

    def initialize
        @status = :working
    end

    def working?
        @status == :working ? true : false
    end

    def report_broken
        @status = :broken
    end

    def fix
        @status = :working
    end
end