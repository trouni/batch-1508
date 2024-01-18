require_relative '../warthog'

describe Warthog do
  describe '#talk' do
    it 'returns "Frank grunts"' do
      frank = Warthog.new("Frank")
      expect(frank.talk).to eq("Frank grunts")
    end

    it 'returns "Stein grunts"' do
      stein = Warthog.new("Stein")
      expect(stein.talk).to eq("Stein grunts")
    end
  end
end
