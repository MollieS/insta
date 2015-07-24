require 'rails_helper' 
require_relative 'helpers.rb'

describe 'Photos' do
  context 'when a user has not uploaded photos' do
    scenario 'they are prompted to upload one' do
     sign_up
     create_profile
     click_link 'profile'
     expect(page).to have_content "no photos yet"
     expect(page).to have_link "add a photo"
    end

    scenario 'they can upload a photo' do
      sign_up
      create_profile
      click_link 'add a photo'
      expect(page).to have_button 'Create Photo'
    end
    
    scenario 'they can view their photo' do
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

    scenario 'they can upload a second photo' do
      click_link 'add a photo'
      fill_in 'Title', with: 'test photo2'
      click_button 'Create Photo'
      expect(page).to have_content 'test photo2'
      expect(page).to have_content 'test photo'
    end
  end

  context 'viewing other users photos' do
    scenario 'on their profile'
  end

end
