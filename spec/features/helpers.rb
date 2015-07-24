def sign_up
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', with: 'test@test.com'
  fill_in 'Password', with: 'password'
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
end

def create_profile
  click_link 'create profile'
  fill_in 'Name', with: 'test'
  fill_in 'Username', with: 'username'
  fill_in 'Location', with: 'London'
  fill_in 'Bio', with: 'A little about test'
  click_button 'Create Profile'
end
