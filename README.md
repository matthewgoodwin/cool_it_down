# README

april 11,2017
deleted from the home page
  <p><%= link_to "sign out", destroy_user_session_path, class: "no-decor home-link", method: :delete %></p>

Part 2:
# I want to auto refresh the div without refreshing the entire page.. I can only use
# on the same page so this should target receipts.html.erb
below is the starting point:

setInterval(function(){
  $('#orders').load("lounges/show.html.erb");
}, 2000);


April 4, 2017
rails g pundit:policy class_name

authorize @bev
    # ^ i think I need to authorize the @lounge here? `authorize(@lounge)` or `set_lounge` below
    # ^^ I only want the lounge owner or admin to create bevs


March 18, 2017

 <div>
      <%= link_to "menu/order", "#", class: "toggle-menu-order" %>
</div><!--end of link_to toggle button div -->


Feb 24, 2017
undefined method `country_select' for #<SimpleForm::FormBuilder:0x007ff969110728>
dumb problem/bug with country.. so changed to 'nation'.. noby has time for this....


feb 19, 2017

<div class="container">

  <div class="lounge-container">

    <h1><%= @lounge.name %></h1>
    <h4>Lounge#show</h4>

    <% @lounge.bevs.each do |bev|%>


      <div class="bev-div">
        <%= link_to bev_path(bev), class: "bev-path-link" do %>
          <div class="bev-head">
            <h3><%= bev.name %></h3>
          </div><!--end of bev head-->

          <div class="bev-body">
            <p>description: <%= bev.desc %></p>
            <p>category: <%= bev.variety %></p>
          </div><!--end of bev body-->

          <div class="bev-cost">
            <p><%= bev.cost %></p>
          </div><!-- end of cost-->
        <% end %><!-- end of path-->
          <div class="bev-action">
            <%= link_to "order", bev_path(bev), class: "btn btn-primary" %>
          </div>

      </div> <!-- end of bev-div -->


      <!-- The README FILE-->


    <% end %><!-- end of loun bev loop -->

  </div><!-- end of the loung-con -->

</div><!--container-->


feb 18, 2017
below goes in the `lounges#show` page
<div>
    <%= render "orders/order_form", bev: bev, order: @order %>
</div>


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
