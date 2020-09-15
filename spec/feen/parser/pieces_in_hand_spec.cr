require "spec"
require "../../../src/feen/parser/pieces_in_hand"

describe FEEN::Parser::PiecesInHand do
  describe ".parse" do
    it "parses some pieces in hand" do
      actual_value = FEEN::Parser::PiecesInHand.parse("S/b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")

      actual_value.should eq([
        %w[S],
        %w[b g g g g n n n n p p p p p p p p p p p p p p p p p r r s],
      ])
    end
  end
end
