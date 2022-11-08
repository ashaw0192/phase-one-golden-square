require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "checks whether codeword is correct, close, or incorrect" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "checks whether codeword has same first and last letters" do
        result = check_codeword("house")
        expect(result).to eq "Close, but nope."
    end
    it "checks whether codeword is completely wrong" do
        result = check_codeword("Guacamole")
        expect(result).to eq "WRONG!"
    end
end
