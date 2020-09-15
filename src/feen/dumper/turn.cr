module FEEN
  module Dumper
    # The turn module.
    module Turn
      # @param active_side_id [Integer] The identifier of the active player.
      # @param sides_count [Integer] The number of players.
      #
      # @example Dump the number that identify the player who have to play
      #   dump(0, 2) # => "0"
      #
      # @return [String] The number that identify the player who have to play.
      def self.dump(active_side_id, sides_count)
        (active_side_id.to_i % sides_count.to_i).to_s
      end
    end
  end
end
