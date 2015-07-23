require 'rails_helper'

describe 'Profiles' do
  before(:each) do
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
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

  def create_profile
    click_link 'create profile'
    fill_in 'Name', with: 'test'
    fill_in 'Username', with: 'username'
    fill_in 'Location', with: 'London'
    fill_in 'Bio', with: 'A little about test'
    click_button 'Create Profile'
  end
end
