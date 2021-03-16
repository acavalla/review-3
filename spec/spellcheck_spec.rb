require 'spellcheck'

describe Spellcheck do
  describe '#check' do
    it 'accepts a string' do
      expect(subject).to respond_to(:check).with(2).arguments
    end

    it 'allows correctly spelled word to pass' do
      expect(subject.check("hello", ["hello"])).to eq "hello"
    end

    it 'highlights wrong words' do
      expect(subject.check("hllo", [])).to eq "~hllo~"
      expect(subject.check("ito", [])).to eq "~ito~"
    end

    it 'can handle two correctly spelled words' do
      expect(subject.check("hello friend", ["hello", "friend"])).to eq "hello friend"
    end
  end

end
