require 'rails_helper'
require_relative 'helpers.rb'

describe 'Profiles' do
  before(:each) do
    sign_up
  end

  context 'a new user' do
    scenario 'should be prompted to create a profile' do
      click_link 'create profile'
      fill_in 'Name', with: 'test'
      fill_in 'Username', with: 'username'
      fill_in 'Location', with: 'London'
      fill_in 'Bio', with: 'A little about test'
      click_button 'Create Profile'
      expect(page).to have_content 'test'
    end
  end

  context 'a returning user' do
    before(:each) do
      create_profile
    end
    scenario 'with a profile' do
      expect(page).not_to have_content 'create profile'
    end

    scenario 'views their profile' do
      visit '/'
      click_link 'profile'
      expect(page).to have_content 'test'
    end
  end

  context 'viewing profiles' do
    scenario 'from the homepage' do
      create_profile
      click_link 'Sign out'
      visit '/'
      expect(page).to have_content '@user'
    end
  end
end
