require 'rails_helper'

describe Vehicle do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:vehicle_type) }
  it { is_expected.to validate_presence_of(:length_in_inches) }
end
