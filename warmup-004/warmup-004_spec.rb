require_relative "./warmup-004"

describe "#count_words" do
  it "should return the number of words in a sentence" do
    expect(count_words("I am a sentence with seven words")).to eq(7)
  end
end

  #write at least one other test here

describe "#count_words" do
  it "should return [warning: there is a integer in your string] when integer in string" do
    expect(count_words("I am a sentence with 7 words")).to eq("warning: there is a integer in your string")
  end
end


