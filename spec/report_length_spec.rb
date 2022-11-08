require 'report_length'
RSpec.describe "report_length method" do
    it "returns the length of a string" do
        result = report_length("Hi")
        expect(result).to eq "This string was 2 characters long."
    end
    it "returns length of a string" do
        result = report_length("This is a big string. I hope this works.")
        expect(result).to eq "This string was 40 characters long."
    end
end