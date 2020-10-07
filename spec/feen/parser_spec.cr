require "spec"
require "../../src/feen/parser"

describe FEEN::Parser do
  describe ".call" do
    it "parses a classic Tsume Shogi problem" do
      actual_value = FEEN::Parser.call("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9 0 S,b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")

      actual_value.should eq({
        side_id: 0,
        square:  {
           3 => "s",
           4 => "k",
           5 => "s",
          22 => "+P",
          43 => "+B",
        },
        shape:   [9, 9],
        in_hand: %w[S b g g g g n n n n p p p p p p p p p p p p p p p p p r r s],
      })
    end
  end
end
