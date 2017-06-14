# README

June 11, 2017

prepopulate form with default data:

<%= f.input :user, :input_html => { :value => 'user@domain.com' } %>

------END

may 13, 2017

delete search button on `lounge search` page

<%= submit_tag "search", class: "btn-primary btn no-decor" %>
# ^switchted to `button_type`


may 7, 2017

Cloudinary/carriewave was not working on heroku bc I didnt push the couldinary_url cred to heroku

figaro heroku:set -e production

heroku config

-------END


May 7, 2017

  <% avatar_url = current_user.photo || "http://placehold.it/50x50" %>
  <div class="user-avatar dropdown-toggle", data-toggle= "dropdown" style="background-image: url('<%= image_path avatar_url , class: "avatar dropdown-toggle", id: "navbar-cool-menu" %>'); background-size: cover; width: 50px; height: 50px; border-radius: 50%; background-position: center;"></div>

  avatar for navbar.. not working
-------END


#May 5,2017

cloudinary and carrierwave form
#With a regular rails form, use f.file_field :photo and f.hidden_field :photo_cache.


 ApplicationController

 #  def configure_permitted_parameters
  #   added_attrs = [:username, :fname, :lname, :photo, :photo_cache, :email, :password, :password_confirmation, :remember_me]
  #   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # end

  -----------END

April 30
# original working form which was replaced by the new `:zone` form:
<%= f.input :zone, label: false, placeholder: "select zone", input_html: { class: "clear-order" } %>
# ^ the above is manual but works

-----END

April 29th

# need to cycle through the lounge instance zones to isolate the stalls.
# this should be studied


>> @lounge.zones
=> #<ActiveRecord::Associations::CollectionProxy [#<Zone id: 1, stall: "40", seat: "3", lounge_id: 83, created_at: "2017-04-26 05:30:05", updated_at: "2017-04-26 05:30:05">, #<Zone id: 2, stall: "20", seat: "4", lounge_id: 83, created_at: "2017-04-26 06:06:15", updated_at: "2017-04-26 06:06:15">]>
>>

>> @lounge.zones.each{|x| x.stall}
=> [#<Zone id: 1, stall: "40", seat: "3", lounge_id: 83, created_at: "2017-04-26 05:30:05", updated_at: "2017-04-26 05:30:05">, #<Zone id: 2, stall: "20", seat: "4", lounge_id: 83, created_at: "2017-04-26 06:06:15", updated_at: "2017-04-26 06:06:15">]
>>

>> @lounge.zones.all{|x| x.stall}
=> #<ActiveRecord::AssociationRelation [#<Zone id: 1, stall: "40", seat: "3", lounge_id: 83, created_at: "2017-04-26 05:30:05", updated_at: "2017-04-26 05:30:05">, #<Zone id: 2, stall: "20", seat: "4", lounge_id: 83, created_at: "2017-04-26 06:06:15", updated_at: "2017-04-26 06:06:15">]>
>>

>> @lounge.zones.map{|x| x.stall}
=> ["40", "20"]
>>
# ^ this works

>> @lounge.zones.all.map{|x| x.stall}
=> ["40", "20"]
>>
# ^ this works

---------END

april 27th

# trying to get the zones to display properly

<%= f.input :zone, label: false, placeholder: "select zone", input_html: { class: "clear-order" } %>

    <%= f.input :zone, collection: @lounge.zones.each {|z| [z] }, label: false, prompt: "zones", input_html: { class: "clear-order" } %>


    <% f.simple_fields_for :zone, @lounge.zones.each do |z| %>
      <%= z.input select: [z]%>
    <% end %>


<% @lounge.zones.sort{ |a, b| b.stall <=> a.stall }.each do |zone| %>
    <%= f.simple_fields_for zone do |z| %>
      <%= z.select(z.stall) %>
    <% end %>
    <% end %>





MORE OF THE SAME


<% @lounge.zones.each do |z| %>
      <%= f.input :zone, label: false %>
    <% end %>

    <% f.simple_fields_for :zone, @lounge.zones.each do |z| %>
      <%= z.input select_tag: [z]%>
    <% end %>

    <% @lounge.zones.sort{ |a, b| b.stall <=> a.stall }.each do |zone| %>
    <%= f.simple_fields_for zone do |z| %>
      <%= z.input label: [z] %>
    <% end %>
    <% end %>


-----END-----

april 21, 2017

search forms that dont work.. WHY???

      <div>
        <%= simple_form_for lounges_path, :method => 'get' do |f| %>
        <%= f.input :search, label: false, placeholder: "lounge or city" %>
        <%= f.submit %>
        <% end  %>
      </div>
AND...

      <div>
       <%= simple_form_for :pages, method: :get, url: search_path do |f| %>
       <%= f.input :search, label: false, placeholder: "lounge or city" %>
        <%= f.submit %>
        <% end %>
     </div>

  New form works, but Im not certain why these do not...


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
