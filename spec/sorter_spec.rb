require "spec_helper"
require "sorter.rb"

describe Sorter do
  describe ".sort_ascending" do
    it "sorts arrays in ascending order" do
      expect(described_class.sort_ascending([3])).to eq([3])
      expect(described_class.sort_ascending([3,1,7,4,8])).to eq([1,3,4,7,8])
      expect(described_class.sort_ascending([3,1,7,4,1,8])).to eq([1,1,3,4,7,8])
    end
  end

  describe ".sort_descending" do
    it "sorts arrays in descending order" do
      expect(described_class.sort_descending([3])).to eq([3])
      expect(described_class.sort_descending([3,1,7,4,8])).to eq([8,7,4,3,1])
      expect(described_class.sort_descending([4,3,1,7,4,8])).to eq([8,7,4,4,3,1])
    end
  end
end
