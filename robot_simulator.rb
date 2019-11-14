class Robot
    attr_reader :direction, :directions, :coordinates
    @@directions = [:north, :east, :south, :west]

    def initialize()
        @direction
        @coordinates = [0, 0]
    end

    def orient(direction)
        raise ArgumentError, 'Argument is not a direction' unless @@directions.include? direction
        @direction = direction 
    end

    def bearing
        @direction
    end

    def turn_right
        current_index = @@directions.index(direction) + 1
        @direction = @@directions[current_index % 4]
    end

    def turn_left
        current_index = @@directions.index(direction) - 1
        @direction = @@directions[current_index % 4]
    end

    def at(x,y)
        raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric  
        raise ArgumentError, 'Argument is not numeric' unless y.is_a? Numeric  
        @coordinates = [x, y]
    end
end