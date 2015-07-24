require 'rails_helper'
require_relative 'helpers.rb'

describe 'following a user' do
  context 'a new follower' do
    scenario 'from the homepage', js: true do
      sign_up
      create_profile
      click_link 'Sign out'
      sign_up('another@test.com', 'password')
      click_link 'follow'
      expect(page).to have_content '1 follower'
    end
  end
end
