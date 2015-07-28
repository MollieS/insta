require 'rails_helper' 
require_relative 'helpers.rb'

describe 'Photos' do
  context 'when a user has not uploaded photos' do
    scenario 'they should be prompted to upload one' do
     sign_up
     create_profile
     click_link 'profile'
     expect(page).to have_content "no photos yet"
     expect(page).to have_link "add a photo"
    end

    scenario 'they should be able to upload a photo' do
      sign_up
      create_profile
      click_link 'add a photo'
      expect(page).to have_button 'Create Photo'
    end
  end

  context 'when a user uploads a photo' do
    scenario 'they should see their photo' do
      sign_up
      create_profile
      click_link 'add a photo'
      fill_in 'Title', with: 'test photo'
      fill_in 'Location', with: 'London'
      click_button 'Create Photo'
      expect(page).to have_content 'test photo'
      expect(page).not_to have_content 'no photos yet'
    end
  end

  context 'when a user has uploaded a photo' do
    before(:each) do
      sign_up
      create_profile
      add_photo
    end

    scenario 'they should be able to upload a second photo' do
      click_link 'add a photo'
      fill_in 'Title', with: 'test photo2'
      click_button 'Create Photo'
      expect(page).to have_content 'test photo2'
      expect(page).to have_content 'test photo'
    end
  end

  context 'uploaded photos' do
    scenario 'should be visible on the homepage' do
      sign_up
      create_profile
      add_photo
      click_link 'Sign out'
      sign_up('another@test.com', 'password')
      expect(page).to have_content 'test photo'
    end

    scenario 'should be visible on a user profile' do
      sign_up
      create_profile
      add_photo
      click_link 'Sign out'
      sign_up('another@test.com', 'password')
      click_link '@user'
      expect(page).to have_content 'test photo'
      expect(page).not_to have_content 'add a photo'
    end
  end

end
