require 'rails_helper'
require_relative 'helpers.rb'

feature 'comments' do
  context 'from the homepage' do
    scenario 'adding a comment' do
      sign_up
      Photo.create(title: 'Mountains', image_file_name: 'mountains.jpg')
      visit '/'
      click_link 'Mountains'
      fill_in 'Text', with: 'Nice photo'
      click_button 'Create Comment'
    end
  end
end
