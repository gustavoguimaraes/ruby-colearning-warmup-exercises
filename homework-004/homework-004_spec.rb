require_relative 'homework-004.rb'

describe "make_list"  do
  it "makes an array to a list with index" do
    expect(make_list(["ich", "ni", "san"])).to eq(["1. ich", "2. ni", "3. san"])  
  end
end 
