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

    it 'can handle two words, one is spelled corrently' do
      expect(subject.check("hello frind", ["hello", "friend"])).to eq "hello ~frind~"
    end

    it 'preserves capitalization' do
      expect(subject.check("Hello", ["hello"])).to eq "Hello"
      expect(subject.check("Hllo", [])).to eq "~Hllo~"
    end

  end

end
