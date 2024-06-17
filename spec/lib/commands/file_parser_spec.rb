# frozen_string_literal: true

require 'spec_helper'

RSpec.shared_examples 'creates_owners_and_vehicles' do
  it 'is able to parse into owners and vehicles' do
    subject
    expect(Owner.count).to eq(4)
    expect(Vehicle.count).to eq(4)
  end
end

describe Commands::FileParser do
  describe '.call' do
    subject(:parser) { described_class.call(File.read(file)) }
    let(:file) { './spec/fixtures/vehicle_info_with_commas.txt' }

    context 'when given a file' do
      include_examples 'creates_owners_and_vehicles'
    end

    context 'when | delimiter' do
      let(:file) { './spec/fixtures/vehicle_info_with_pipes.txt' }
      include_examples 'creates_owners_and_vehicles'
    end
  end
end
