require './caesar'

describe 'caesar_cipher' do
  it "shifts the string by one" do
    expect(caesar_cipher("hello world",1)).to eq 'ifmmp xpsme'
  end
end
