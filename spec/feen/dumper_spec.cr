require "spec"
require "../../src/feen/dumper"

describe FEEN::Dumper do
  describe ".call" do
    it "dumps a classic Tsume Shogi problem" do
      actual_value = FEEN::Dumper.call(
        side_id: Int8.new(0),
        square: {
           3 => "s",
           4 => "k",
           5 => "s",
          22 => "+P",
          43 => "+B",
        },
        shape: [Int8.new(9), Int8.new(9)],
        in_hand: %w[S r r b g g g g s n n n n p p p p p p p p p p p p p p p p p],
      )

      actual_value.should eq("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9 0 S,b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")
    end
  end
end
