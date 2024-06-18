# frozen_string_literal: true

require 'rails_helper'

describe Owner do
  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of :email }
  it { is_expected.to allow_value('test@gmail.com').for(:email) }
  it { is_expected.not_to allow_value('test@gmail').for(:email) }
end
