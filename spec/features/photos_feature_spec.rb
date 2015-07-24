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

    scenario 'uploading a photo' do
      sign_up
      create_profile
      click_link 'add a photo'
      expect(page).to have_button 'Create Photo'
    end
    
    scenario 'photo uploaded' do
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

  context 'adding muliple photos' do
    before(:each) do
      sign_up
      create_profile
      add_photo
    end

    scenario 'a second photo' do
      click_link 'add a photo'
      fill_in 'Title', with: 'test photo2'
      click_button 'Create Photo'
      expect(page).to have_content 'test photo2'
      expect(page).to have_content 'test photo'
    end
  end

end
