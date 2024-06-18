# typed: true
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'home/index', type: :feature do
  context 'file uploads' do
    it 'populate table' do
      visit root_path
      expect(page).to have_content('Outdoor.sy')

      attach_file('file', Rails.root.join('spec', 'fixtures', 'vehicle_info_with_commas.txt'))
      click_button 'Upload'

      # 4 rows for the 4 entries in the file + the header :)
      expect(page).to have_css('table tr', count: 5)
    end
  end
end
