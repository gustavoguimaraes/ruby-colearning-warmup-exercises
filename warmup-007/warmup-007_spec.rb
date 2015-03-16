require './warmup-007'

describe '#count'  do
  it 'should return a hash with the animal as the key and a count as a value' do
    expect(count(['cat', 'dog', 'fish', 'fish', 'cat', 'cat', 'fish'])).to eq({ 'cat' => 3, 'dog' => 1, 'fish' => 3})
   end

  # write another test here  

end
