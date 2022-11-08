require 'greet'

RSpec.describe "greet method" do
    it "greets by name when given a name" do
        result = greet("Tony")
        expect(result).to eq "Hello, Tony!"
    end
end