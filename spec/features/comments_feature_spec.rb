require 'rails_helper'
require_relative 'helpers.rb'

feature 'comments' do
  context 'from the homepage' do
    scenario 'adding a comment' do
      sign_up
      create_profile
      add_photo("Mountains", "London")
      click_link "home"
      click_link "Mountains"
      fill_in 'Text', with: 'Nice photo'
      click_button 'Create Comment'
      expect(page).to have_content 'Nice photo'
    end
  end
end
