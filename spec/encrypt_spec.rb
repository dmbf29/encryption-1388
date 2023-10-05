require_relative '../encrypt'
# Rspec
# 1. describe -> saying which method we're testing
# 2. it       -> just describing the test in plain English
# 3  expect   -> call the method and compare to what we expect

describe '#describe' do
  it 'should return an empty string when given one' do
    expect(encrypt('')).to eq('')
  end

  it 'should return a string when given a sentence' do
    expect(encrypt('l').class).to eq(String)
  end

  it 'should return "B" when given the letter "E"' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return an encrypted message when given a sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted message when given a sentence with punctuation' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!"
    expect(actual).to eq(expected)
  end
end
