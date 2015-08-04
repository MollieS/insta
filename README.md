#insta -in progress-

[![Build Status](https://travis-ci.org/MollieS/insta.svg?branch=master)](https://travis-ci.org/MollieS/insta) [![Coverage Status](https://coveralls.io/repos/MollieS/insta/badge.svg?branch=master&service=github)](https://coveralls.io/github/MollieS/insta?branch=master)

##Task

Build a clone of Instagram

####Basic Features

```
As a user
So that I can upload pictures
I would like to log in

As a user
So that I can use the website
I would like to upload pictures

As a user
So that others can find out more about me and see my pictures in one place
I would like a profile

As a user
So that I can show I think a picture is good
I would like to like pictures

As a user
So that I can see who likes my pictures
I would like people to log in to like pictures

As a user
So that I can talk about pictures
I would like to comment on pictures

As a user
So that I can see who is talking about my pictures
I would like user to have to log in to comment on pictures
```

####Additional Features

```
As a user
So that I can see the pictures of people I like
I would like to follow other users

As a user
So that I can find pictures tagged with my interests
I would like to filter
```

####Completed so far

- Users can log in
- Users can create profiles
- Users can upload pictures
- Users can like and comment on pictures
- Users can follow other users

####To do

- Add styling
- Add a many_through relationship to followers
- Add restrictions to likes & followers
- Improve UX
- Add tags and search/filter functionality

####How to run

deployed to heroku here: https://instamollie.herokuapp.com/

or
- clone this repository
- `cd insta`
- `bundle` to install dependencies
- `bin/rake db:create` will create the necessary database
- `bin/rake db:migrate` will run all migrations
- `bin/rails s` and visit localhost:3000

####Tests

- to run tests: `rpsec`



