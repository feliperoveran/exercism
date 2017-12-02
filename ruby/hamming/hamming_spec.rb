require_relative 'hamming'

describe Hamming do
  describe '.compute' do
    it 'raises an error when argument length are different' do
      expect { Hamming.compute('AGT', 'TG') }
        .to raise_error(ArgumentError)
    end
  end
end
