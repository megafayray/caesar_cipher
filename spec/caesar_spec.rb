#spec/caesar_spec.rb
require './lib/main.rb'

describe "#caesar_cipher" do
  it "returns a new string with each letter shifted by 1" do
    string = "hello"
    shift_factor = 1
    expect(caesar_cipher(string, shift_factor)).to eql("ifmmp")
  end

  it "returns the same string if the shift factor is 0" do 
    string = "blam"
    shift_factor = 0
    expect(caesar_cipher(string, shift_factor)).to eql("blam")
  end

  it "handles a string that includes 'z'" do
    string = "zoo"
    shift_factor = 10
    expect(caesar_cipher(string, shift_factor)).to eql("jyy")
  end

  it "returns a string that includes symbols" do
    string = "info@email.com"
    shift_factor = 4
    expect(caesar_cipher(string, shift_factor)).to eql("mrjs@iqemp.gsq")
  end

  it "returns a string that includes numbers" do
    string = "12a"
    shift_factor = 1
    expect(caesar_cipher(string, shift_factor)).to eql("12b")
  end

  it "returns a string with uppercase and lowercase letters" do
    string = "UPdown"
    shift_factor = 12
    expect(caesar_cipher(string, shift_factor)).to eql("GBpaiz")
  end

  it "handles a string that includes spaces" do
    string = "the odin project"
    shift_factor = 99
    expect(caesar_cipher(string,shift_factor)).to eql("ocz jydi kmjezxo")
  end
end