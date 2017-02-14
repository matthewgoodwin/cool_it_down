# README

Feb, 14, 2017
NEW
route file:
NESTED RESOURCES(SHALLOW SET TRUE)
#this eliminates the additional id params in the path....
bev GET    /bevs/:id(.:format)                    bevs#show
lounges show.html
<% @lounge.bevs.each do |b|%>
    <%= link_to bev_path(b) do%>
    #=> http://localhost:3000/bevs/36


NESTED RESOURCES(NOT SHALLOW)
lounge_bev GET    /lounges/:lounge_id/bevs/:id(.:format)                     bevs#show
lounges show.html
<% @lounge.bevs.each do |b|%>
    <%= link_to lounge_bev_path(@lounge, b) do%>
    #=> http://localhost:3000/lounges/25/bevs/36







Feb 10, 2017
Model for generating money:
$ rails generate model product 'price:decimal{10,2}'


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
