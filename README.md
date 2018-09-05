# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
1. As a user, I want to add a new item to the site so I can share a work that I have experienced.
1. As a user, I want to be able to edit and delete works on the site so that information is correct and current.
1. As a user, I want to be able to see all works alphabetically by name.
1. As a user, I want to see all works in order by creation date.
1. As a user, I want to be able to see links on the homepage to the most popular filtered lists (for example: Most popular subgenres)
1. As a user, I want to be able to view a featured work on the home page that randomly changes each time I visit.
1. As a user, I want to be able to view each work individually to see all of its details.
1. As a user, I want to be able to give each work a rating and see the average rating of all works.
1. As a user, I want to be able to write my own opinion/review of each work.

### Ruby version

### System dependencies

### Configuration

### Database creation

### Database initialization

### How to run the test suite

### Services (job queues, cache servers, search engines, etc.)

### Deployment instructions

### ...

database:

music yacht rock

users: name, song-id, has_many songs, opinions

songs: title, artist, album, year, has_many users  

create_table :songs do |t|
  t.title :string
  t.artist :string
  t.timestamps
end
create_table :opinions do |t|
  t.belongs_to :users, index: true
  t.belongs_to :songs, index: true
  t.string :opinion
  t.timestamps
end
