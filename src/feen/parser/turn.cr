module FEEN
  module Parser
    # The turn module.
    module Turn
      # @param side_id [String] The identifier of bottom-side and
      #   top-side.
      #
      # @example Parse the number that identify the player who have to play
      #   parse("0") # => 0
      #
      # @return [Integer] The number that identify the player who have to play.
      def self.parse(side_id)
        side_id.to_i
      end
    end
  end
end
