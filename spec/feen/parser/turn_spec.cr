require "spec"
require "../../../src/feen/parser/turn"

describe FEEN::Parser::Turn do
  describe ".parse" do
    it "parses a turn" do
      actual_value = FEEN::Parser::Turn.parse("0")

      actual_value.should eq(0)
    end
  end
end
