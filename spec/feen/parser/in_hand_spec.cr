require "spec"
require "../../../src/feen/parser/in_hand"

describe FEEN::Parser::InHand do
  describe ".parse" do
    it "parses some pieces in hand" do
      actual_value = FEEN::Parser::InHand.parse("S,b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")

      actual_value.should eq(%w[S b g g g g n n n n p p p p p p p p p p p p p p p p p r r s])
    end
  end
end
