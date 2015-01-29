require_relative "./warmup-003"

describe "#first_even_number" do  # method for debugging
  it "should return the first even number in an array" do
    expect(first_even_number([30, 17, 77, 102])).to eq(30)
  end

  it "should return the first even number in an array" do
    expect(first_even_number([5, 11, 50])).to eq(50)
  end

  it "should return the first even number in an array" do
    expect(first_even_number([3, 5, 15, 16, 23, 42])).to eq(16)
  end
  it "should return nil" do
    expect(first_even_number([3, 5 ,7 , 15, 23, ])).to eq(nil)
  end

end
