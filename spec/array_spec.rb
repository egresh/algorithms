require "algorithms"

include Algorithms::Array

RSpec.describe "Array" do
  context "subset_using_array" do
    it "finds one array's elements embedded inside another" do
      expect(subset_using_array([1, 3, 5, 8, 9], [3, 8])).to be true
    end

    it "returns false when any of the elements are missing" do
      expect(subset_using_array([1, 3, 5, 8, 9], [3, 6])).to be false
    end
  end

  context "subset_using_hash" do
    it "finds one array's elements embedded inside another" do
      expect(subset_using_hash([1, 3, 5, 8, 9], [3, 8])).to be true
    end

    it "returns false when any of the elements are missing" do
      expect(subset_using_hash([1, 3, 5, 8, 9], [3, 6])).to be false
    end
  end
end
