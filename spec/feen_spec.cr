require "spec"
require "../src/feen"

# describe FEEN do
#   describe ".dump" do
#   end

#   describe ".parse" do
#   end

#   starting_position =
#     FEEN.new(squares)

#   moves = [
#     [56, 47, "P"],
#     [3, 11, "g"],
#     [64, 24, "+B", "P"],
#     [5, 14, "g"],
#     [24, 14, "+B", "G"],
#     [4, 3, "k"],
#     [nil, 13, "G"],
#   ]

#   last_position =
#     moves.reduce(starting_position) do |position, move|
#       position.call(move)
#     end

#   describe "#to_s" do
#     it "describes the last position" do
#       last_position.pieces_in_hand_grouped_by_sides.should eq([["P"], [] of String])

#       last_position.squares.should eq(["l", "n", "s", "k", nil, nil, "s", "n", "l",
#                                        nil, "r", "g", nil, "G", "+B", nil, "b", nil,
#                                        "p", "p", "p", "p", "p", "p", nil, "p", "p",
#                                        nil, nil, nil, nil, nil, nil, nil, nil, nil,
#                                        nil, nil, nil, nil, nil, nil, nil, nil, nil,
#                                        nil, nil, "P", nil, nil, nil, nil, nil, nil,
#                                        "P", "P", nil, "P", "P", "P", "P", "P", "P",
#                                        nil, nil, nil, nil, nil, nil, nil, "R", nil,
#                                        "L", "N", "S", "G", "K", "G", "S", "N", "L"])

#       last_position.in_hand_pieces.should eq([] of String)
#       last_position.active_side_id.should eq(1)
#     end
#   end
# end