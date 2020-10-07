module FEEN
  module Dumper
    # The turn module.
    module Turn
      # @param side_id [Integer] The identifier of the active player.
      #
      # @example Dump the number that identify the player who have to play
      #   dump(0) # => "0"
      #
      # @return [String] The number that identify the player who have to play.
      def self.dump(side_id)
        side_id.to_s
      end
    end
  end
end
