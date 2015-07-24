require 'rails_helper'
require_relative 'helpers.rb'

feature 'comments' do
  context 'from the homepage' do
    scenario 'adding a comment' do
      Photo.create(title: 'Mountains', image_file_name: 'mountains.jpg')
      sign_up
      create_profile
      visit '/'
      click_link 'Mountains'
      fill_in 'Text', with: 'Nice photo'
      click_button 'Create Comment'
      expect(page).to have_content 'Nice photo'
    end
  end
end
