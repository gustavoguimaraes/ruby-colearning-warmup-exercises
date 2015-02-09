require './homework-002'

describe Kitchen do
  let (:kitchen) { Kitchen.new }

  # Test 1
  it "initializes with an empty items array" do
    expect(kitchen.items).to eq []
  end

  # Test 2
  it "uses the shovel operator to add a stove to the kitchen" do
    expect(kitchen.add("stove")).to eq ["stove"]
  end
  
  # Test 3
  it "returns the first and last emements of the array" do
    kitchen.add("stove")
    kitchen.add("cat")
    kitchen.add("sink")
    kitchen.remove_first_and_last_elements

    expect(kitchen.items).to eq ["cat"]
  end

  # Test 4
  it "adds and ! to the end of all of its items" do
    kitchen.add("stove")
    kitchen.add("windows")
    kitchen.add_bang

    expect(kitchen.items).to eq ["stove!", "windows!"]
  end

  # Test 5
  it "creates arrays out of each element" do
    expect(kitchen.make_mini_arrays(["stove", "windows"])).to eq [["stove"], ["windows"]]
  end
  # Test 5
  it "creates arrays out of each element" do
    expect(kitchen.make_mini_arrays(["the stove", "windows"])).to eq [["the stove"], ["windows"]]
  end


  # Test 6
  it "removes any item with more than 3 letters in its name from the kitchen" do
    expect(kitchen.remove_if_more_than_three_letters(["windows", "cat", "stove", "pan", "scarf"])).to eq ["cat", "pan"]
  end

  # Test 7
  it "sorts each item alphabetically backwards " do
    expect(kitchen.alphabetically_backwards(["apple", "cat", "window", "pan"])).to eq ["window", "pan","cat", "apple"]
  end

  # Test 8
  it "returns the first 3 items in the kitchen" do
    expect(kitchen.first_three(["cake", "cat", "kale", "pan"])).to eq ["cake", "cat", "kale"]
  end
end
