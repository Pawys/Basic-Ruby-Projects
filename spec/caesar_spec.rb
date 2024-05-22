require './caesar'

describe 'caesar_cipher' do
  it "shifts the string by one forwards" do
    expect(caesar_cipher("hello world",1)).to eq 'ifmmp xpsme'
  end
  it "shifts the string by one backwards" do
    expect(caesar_cipher("hello world",-1)).to eq 'gdkkn vnqkc'
  end
  it "shifts only the letters" do
    expect(caesar_cipher("hello, world!",1)).to eq 'ifmmp, xpsme!'
  end
  it "it keeps the same case" do
    expect(caesar_cipher("HeLLo WORlD",1)).to eq 'IfMMp XPSmE'
  end
  it "wraps around from z to a" do
    expect(caesar_cipher("hello world",9)).to eq 'qnuux fxaum'
  end
  it "wraps around from z to a" do
    expect(caesar_cipher("hello world",-4)).to eq 'dahhk sknhz'
  end
end
