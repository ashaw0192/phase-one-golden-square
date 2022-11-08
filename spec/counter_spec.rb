require 'counter'

RSpec.describe Counter do
  it "returns 5 when 5 is added" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "returns random number when random number is added" do
    counter = Counter.new
    random_num = rand(10)
    counter.add(random_num)
    result = counter.report
    expect(result).to eq "Counted to #{random_num} so far."
  end

  it "when two numbers added, the correct total is returned" do
    counter = Counter.new
    random_num_one = rand(100)
    counter.add(random_num_one)
    counter.add(10)
    result = counter.report
    expect(result).to eq "Counted to #{random_num_one + 10} so far."
  end
end