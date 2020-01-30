class Bike
    attr_reader :status

    def initialize
        @status = :working
    end

    def working?
        @status == :working ? true : false
    end

    def report_broken
        @status = :broken
    end
end