require 'rails_helper'
require_relative 'helpers.rb'

describe 'liking photos' do
  before do
    sign_up
    create_profile
    add_photo
  end

  context 'when a user is logged in' do
    scenario 'on the homepage' do
      visit '/'
      click_link 'like'
      expect(page).to have_content '1 like'
    end
  end

end
