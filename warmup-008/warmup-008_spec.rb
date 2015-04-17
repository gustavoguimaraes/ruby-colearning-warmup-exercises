require './warmup-008'

describe '#words_highlighter' do

  it 'should return a the 10 most repeated words highlighted' do
    text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id mi id nisl sagittis varius non id leo. Nunc ornare orci diam, vitae eleifend odio malesuada vel. Curabitur mollis turpis eu nibh tempor, at aliquet sem iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin et quam id dui vulputate dapibus ut et mauris. Duis tincidunt quam a semper scelerisque. Cras turpis risus, scelerisque vitae auctor nec, placerat quis dui. Fusce neque diam, porttitor ac ultricies eget, laoreet ac arcu. Sed dolor urna, lacinia nec dolor vel, pharetra lobortis sem. Morbi imperdiet sodales eros id convallis. Praesent facilisis bibendum erat in aliquam. Aenean ut varius orci, in commodo justo. Mauris tempus nunc quis ipsum aliquet volutpat at sed dolor. Nam vitae ligula mauris. Duis tempor urna a nisl efficitur faucibus."
    result = "Lorem ipsum DOLOR sit amet, consectetur adipiscing elit. Sed ID mi ID nisl sagittis varius non ID leo. Nunc ornare orci diam, VITAE eleifend odio malesuada vel. Curabitur mollis turpis eu nibh tempor, at aliquet sem iaculis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin et quam ID dui vulputate dapibus ut et mauris. Duis tincidunt quam a semper scelerisque. Cras turpis risus, scelerisque VITAE auctor nec, placerat quis dui. Fusce neque diam, porttitor ac ultricies eget, laoreet ac arcu. Sed DOLOR urna, lacinia nec DOLOR vel, pharetra lobortis sem. Morbi imperdiet sodales eros ID convallis. Praesent facilisis bibendum erat in aliquam. Aenean ut varius orci, in commodo justo. Mauris tempus nunc quis ipsum aliquet volutpat at sed dolor. Nam VITAE ligula mauris. Duis tempor urna a nisl efficitur faucibus."
    expect(words_highlighter(text, 10)).to  eq(result)
   end



end
