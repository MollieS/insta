def sign_up(email = 'test@test.com', password = 'password')
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', with: email 
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password 
  click_button 'Sign up'
end

def create_profile(name = 'testname', username = '@user', location = 'London', bio = 'A little about @user')
  click_link 'create profile'
  fill_in 'Name', with: name 
  fill_in 'Username', with: username 
  fill_in 'Location', with: location 
  fill_in 'Bio', with: bio 
  click_button 'Create Profile'
end

def add_photo(title = 'test photo', location = 'London')
  click_link 'add a photo'
  fill_in 'Title', with: title 
  fill_in 'Location', with: location
  click_button 'Create Photo'
end

