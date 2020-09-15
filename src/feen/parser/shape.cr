module FEEN
  module Parser
    # The shape class.
    #
    # @example Parse the shape of a shogiban
    #   Shape.new("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9").to_a # => [9, 9]
    class Shape
      @board : String

      # @param board [String] The flatten board.
      def initialize(@board)
      end

      # @return [Array] The size of each dimension of the board.
      def to_a
        separator = @board.scan(/(\/+)/).flat_map(&.captures).compact.sort[-1]
        indexes(@board, separator)
      end

      private def indexes(string : String, separator : String)
        if separator.empty?
          last_index = string.split(",").reduce(0) do |counter, sub_string|
            number = sub_string.matches?(/[0-9]+/) ? sub_string.to_i : 1
            counter + number
          end

          return [last_index]
        end

        sub_strings = string.split(separator)
        [sub_strings.size] + indexes(sub_strings[0], separator[1..])
      end
    end
  end
end
