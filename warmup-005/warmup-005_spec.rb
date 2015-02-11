require_relative "warmup-005"

describe "#roll_die" do
  it "return an hash" do
    expect(roll_die(4)).to be_an(Hash)
  end

  it "return a random value for the face" do
    expect(roll_die(4)[:face]).to be_between(1, 4).inclusive
  end

  it "return the value for the sides" do
    expect(roll_die(4)[:sides]).to be(4)
  end

  context "predictable return value" do
    before do
      # let rand return a predictable number
      srand(1)
    end

    it "return a value for the face" do
      expect(roll_die(20)[:face]).to be(6)
    end

    it "return an hash with sides and face" do
      expect(roll_die(20)).to include({sides: 20, face: 6})
    end
  end

  #write at least one other test here

end

describe "#roll_bucket" do
  before do
    # let rand return a predictable number
    srand(1)
  end
  it "return an array" do
    expect(roll_bucket([20])).to be_an(Array)
  end

  it "return an array of hashes" do
    expect(roll_bucket([20, 30])).to match_array([{:sides=>20, :face=>6}, {:sides=>30, :face=>12}])
  end

  it "return an empty array for empty argument" do
    expect(roll_bucket([])).to match_array([])
  end

  #write at least one other test here
  it "return an array of hashes" do
    expect(roll_bucket([20, 30, 123])).to match_array([{:sides=>20, :face=>6}, {:sides=>30, :face=>12}, {:sides=>123, :face=>13}])
  end


end

describe "#on_the_table" do
  it "return the result for the rolled dice" do
    expected_result = """On the table:
  Your 20-sided die shows the value of 6
  Your 30-sided die shows the value of 12
"""
    expect(on_the_table([{:sides=>20, :face=>6}, {:sides=>30, :face=>12}])).to include(expected_result)
  end

  it "inform you when there are no dice in the bucket" do
    expect(on_the_table([])).to include("No dice in the bucket")
  end
end
