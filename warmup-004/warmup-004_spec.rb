require_relative "./warmup-004"

describe "#count_words" do
  it "should return the number of words in a sentence" do
    expect(count_words("I am a sentence with seven words")).to eq(7)
  end

  #write at least one other test here

end
describe "#count_words" do
  it "should return nil when numbers appear" do
    expect(count_words("I am a sentence with 7 words")).to eq(nil)
  end

  #write at least one other test here

end
