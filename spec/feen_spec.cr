require "spec"
require "../src/feen"

describe FEEN do
  describe ".dump" do
    it "returns the FEEN string representing the position" do
      actual_value = FEEN.dump(
        side_id: Int8.new(0),
        square: {
           3 => "s",
           4 => "k",
           5 => "s",
          22 => "+P",
          43 => "+B",
        },
        shape: [Int8.new(9), Int8.new(9)],
        in_hand: %w[S r r b g g g g s n n n n p p p p p p p p p p p p p p p p p]
      )

      actual_value.should eq("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9 0 S,b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")
    end
  end

  describe ".parse" do
    it "returns the position params representing the position" do
      actual_value = FEEN.parse("3,s,k,s,3/9/4,+P,4/9/7,+B,1/9/9/9/9 0 S,b,g,g,g,g,n,n,n,n,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,p,r,r,s")

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
