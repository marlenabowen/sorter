require "spec_helper"
require "grades.rb"

describe Grade do
    describe ".get_letter_grade_A" do
        it "returns a letter grade of A for values great than 90" do
            expect(described_class.get_letter_grade_A(94)).to eq("A")
        end
        
        it "does not return grade A for values outside 90 to 100" do
            expect(described_class.get_letter_grade_A(202)).to eq("not A")
        end
    end
     
    describe ".get_letter_grade_B" do
        it "returns B for grades 80 through 89" do
            expect(described_class.get_letter_grade_B(86)).to eq("B")
        end
    end
end