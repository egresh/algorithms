require "algorithms"

include Algorithms::Array
RSpec.describe "Array Intersections" do
  context "using hashes" do
    it "returns the intersection of two arrays using a hash implementation" do
      a1 = [*1..1000]
      a2 = [*50..500]

      intersection = intersection_using_hashes(a1, a2)
      expect(intersection).to eq([*50..500])
    end
  end
  context "using arrays" do
    it "returns the intersection of two arrays using an array implementation" do
      a1 = [*1..1000]
      a2 = [*50..500]

      intersection = intersection_using_arrays(a1, a2)
      expect(intersection).to eq([*50..500])
    end
  end
end
