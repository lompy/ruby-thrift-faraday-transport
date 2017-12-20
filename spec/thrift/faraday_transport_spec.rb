require 'spec_helper'

RSpec.describe Thrift::FaradayTransport do
  it 'has a version number' do
    expect(described_class::VERSION).to eq(
      File.read(File.expand_path('../../VERSION', __dir__))
    )
  end

  it 'inherit Thrift::BaseTransport' do
    is_expected.to be_a Thrift::BaseTransport
  end
end
