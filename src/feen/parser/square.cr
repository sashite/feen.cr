module FEEN
  module Parser
    # The square class.
    #
    # @example Parse a Shogi problem board and return an array
    #   Board.new("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9").to_a
    #   # => [
    #   #      nil, nil, nil, "s", "k", "s", nil, nil, nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, nil, nil,
    #   #      nil, nil, nil, nil, "+P", nil, nil, nil, nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, nil, nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, "+B", nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, nil, nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, nil, nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, nil, nil,
    #   #      nil, nil, nil, nil, nil, nil, nil, nil, nil
    #   #    ]
    #
    # @example Parse a Shogi problem board and return a hash
    #   Board.new("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9").to_h
    #   # => {
    #   #       3 => "s",
    #   #       4 => "k",
    #   #       5 => "s",
    #   #      22 => "+P",
    #   #      43 => "+B"
    #   #    }
    class Square
      @board : String

      # @param board [String] The flatten board.
      def initialize(@board)
      end

      # @return [Array] The list of squares on the board.
      def to_a
        @board
          .split(%r{[/,]+})
          .flat_map { |str| row(str) }
      end

      # @return [Hash] The index of each piece on the board.
      def to_h
        to_a
          .each_with_index
          .reduce({} of Int32 => String) do |h, (v, i)|
            next h if v.nil?

            h.merge({i => v})
          end
      end

      private def row(string)
        string.matches?(/[0-9]+/) ? Array(String | Nil).new(string.to_i, nil) : string
      end
    end
  end
end
