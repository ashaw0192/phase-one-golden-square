require 'password_checker'

RSpec.describe PasswordChecker do
    it "returns true when given password >= 8 character's length" do
        password_checker = PasswordChecker.new
        result = password_checker.check("Password12345678")
        expect(result).to eq true
    end

    context "when password is < 8 characters" do
        it "fails" do
            password_checker = PasswordChecker.new
            expect { password_checker.check("1234567") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end

    context "when password is not entered" do
        it "fails" do
            password_checker = PasswordChecker.new
            expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end 