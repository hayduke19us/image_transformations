# frozen_string_literal: true

describe ImageTransformations::Option do
  let(:version) { 1 }
  subject(:option) { described_class.new version }

  describe '#version' do
    it 'returns the image object' do
      option.version.should == version
    end
  end

  let(:default_transformations) do
    {
      effect: 'improve',
      flags: 'lossy.immutable_cache',
      crop: 'scale',
      version: 1
    }
  end

  describe '#default_transformations' do
    it 'returns a hash with default transformation flags' do
      default_transformations.delete :version
      option.default_transformations.should == default_transformations
    end
  end

  describe '#default' do
    it 'returns the default options' do
      option.default.should == default_transformations.merge(width: 460)
    end
  end

  describe '#thumb' do
    it 'returns the thumb options' do
      option.thumb.should == default_transformations.merge(width: 64, height: 64)
    end
  end

  describe '#large' do
    it 'returns the large options' do
      option.large.should == default_transformations.merge(width: 940)
    end
  end
end
