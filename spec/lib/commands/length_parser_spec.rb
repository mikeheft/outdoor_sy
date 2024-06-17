# frozen_string_literal: true

require 'spec_helper'

describe Commands::LengthParser do
  describe '.call' do
    subject(:parse_length) { described_class.call(length_str) }
    let(:length_str) { '32ft' }

    context 'given a string with ft' do
      it 'can parse into feet in inches' do
        expect(subject).to eq(384)
      end
    end

    context 'given a string with ft and in' do
      let(:length_str) { '32 ft 4 in' }
      it 'can parse into feet in inches' do
        expect(subject).to eq(388)
      end
    end

    context 'given a string with \'' do
      let(:length_str) { '32 \'' }
      it 'can parse into feet in inches' do
        expect(subject).to eq(384)
      end
    end

    context 'given a string with \'' do
      let(:length_str) { '32 \' 4"' }
      it 'can parse into feet in inches' do
        expect(subject).to eq(388)
      end
    end
  end
end
