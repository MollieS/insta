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
      expect(page).to have_content 'upload file'
    end
  end

end
