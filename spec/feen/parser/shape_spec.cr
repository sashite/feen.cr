require "spec"
require "../../../src/feen/parser/shape"

describe FEEN::Parser::Shape do
  describe "#to_a" do
    it "parses the shape of a shogiban" do
      actual_value = FEEN::Parser::Shape.new("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9").to_a

      actual_value.should eq([9, 9])
    end
  end
end
