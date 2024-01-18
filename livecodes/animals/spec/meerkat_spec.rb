require_relative '../meerkat'

describe Meerkat do
  describe '#talk' do
    it 'returns "Ben barks"' do
      ben = Meerkat.new("Ben")
      expect(ben.talk).to eq("Ben barks")
    end

    it 'returns "Jerry barks"' do
      jerry = Meerkat.new("Jerry")
      expect(jerry.talk).to eq("Jerry barks")
    end
  end
end
