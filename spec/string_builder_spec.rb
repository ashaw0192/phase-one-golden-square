require 'string_builder'
RSpec.describe StringBuilder do
    it "returns an empty string with no input given" do
        string_builder = StringBuilder.new
        result = string_builder.output()
        expect(result).to eq ""
    end

    it "returns the length of a given string" do
        string_builder = StringBuilder.new
        string_builder.add("Random string")
        result = string_builder.size
        expect(result).to eq 13
    end

    it "returns the string when given the string" do
        string_builder = StringBuilder.new
        string_builder.add("Random string")
        result = string_builder.output
        expect(result).to eq "Random string"
    end

    it "returns the string when given the string" do
        string_builder = StringBuilder.new
        string_builder.add("Andy, ")
        string_builder.add("Tony")
        result = string_builder.output
        expect(result).to eq "Andy, Tony"
    end
end