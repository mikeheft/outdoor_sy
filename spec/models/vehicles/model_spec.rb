# frozen_string_literal: true

require 'rails_helper'

describe Vehicle do
  subject { build(:vehicle) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:vehicle_type) }
  it { is_expected.to validate_presence_of(:length_in_inches) }
  it { is_expected.to validate_uniqueness_of(:name).scoped_to(:owner_id) }
end
