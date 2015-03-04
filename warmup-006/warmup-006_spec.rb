require './warmup-006.rb'

describe Spaetkauf do
  let(:spaetkauf) { Spaetkauf.new }

    it "adds an indexed element" do
      expect(spaetkauf.take_number("piano")).to eq (["1. piano"])
    end 
    it "shows first element and deletes it" do
      spaetkauf.take_number("piano")
      spaetkauf.take_number("timpani")
      spaetkauf.take_number("trumpet")
      expect(spaetkauf.now_serving).to eq ("it is piano's turn")
    end
end
