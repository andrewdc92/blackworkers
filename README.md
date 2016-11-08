# Blackworkers

<!-- Check out our app on <a href="https://ede-men.herokuapp.com/"> Heroku -->

## Objective
The initial idea was spurred by the Blackworkers Instagram page. I wanted to utilize the Instagram API to build a React on Rails app 

## Technologies Used
-Ruby on Rails
-Foundation
-Paypal
-Twitter
-Google Analytics
-Chartkick (engine) + Lazy High Charts (visualization)

The front end and back end is built on Ruby on Rails, with Puma running Ruby's default server. We used Foundation for the front end framework and so that we could work off a grid system. It also made the nav bar more aesthetically pleasing, but the Foundation Helper gem could not be configured to match the most updated version of foundation (v6.0).


## User Stories <br>
You can learn more about our user stories on <a href="https://trello.com/b/5lrSva6s/ngo">Trello</a>.

As a donor, I want to be sign up.

As a donor, I want to log in/log out.

As a donor, I want to donate directly to selected non-profits,

As a donor, I want to view individual NGOs and an index of the NGOs.


## Wireframe
The wireframes were created on Adobe XD and in the database there is a many to many relationship between NGOs and donors. Donors cannot extract their donation history directly because it's securely stored in Paypal, however each transaction generates a receipt, a proof of transaction (the non-profit received it successfully), and the donor's Paypal account stores all transaction histories. In a future build out, we discussed the option of allowing users to favorite non profits if the scope of the app expands outside of Haiti.

## Control Flow

We made a new branch for each respective feature we built out. I made a MVP branch each time we did a full merge from my teammates branches and we did only committed to master after completing some major checkpoints. Master and mvp-v3.0 are both up to date as of 1:15 PST on 10/20/16.

## Code Snippets (Code We're Proud Of!)

```William
disaster_types_per_year.each do |data|
 Country.create(
   deaths: data[:deaths],
   year: data[:year],
   disaster: data[:disaster],
   occurence: data[:occurence],
   affected: data[:affected],
   injured: data[:injured],
   homeless: data[:homeless],
   total_affected: data[:total_affected],
   damage: data[:damage]
 )
end
[12:50]  
<%= line_chart @countries.group(:year).count, height: '300px', colors: ["#2E4159 "], library: {
       title: {text: 'Disaster Timeline', x: -20},
       yAxis: {
          allowDecimals: false,
          title: {
              text: 'Occurences'
          }
       },
       xAxis: {
          title: {
              text: 'Year'
          }
       }
     }  %>
Andrew

Ngo.create({name: "Konbit Mizik", category: "At-Risk Youth", website: "http://www.konbitmizik.org/about-us", content: @Konbit, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=D5ZQGSQVJL4F8", misson: @KonbitMission})
Ngo.create({name: "Sakala/Bochika", category: "At-Risk Youth", website: "http://www.sakala-haiti.org/", content: @Sakala, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=X5AJ3UTP9JXK4", misson: @SakalaMission})
Ngo.create({name: "Street Hearts Haiti", category: "Youth", website: "http://www.streetheartshaiti.org/", content: @ShHaiti, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=AA8WR8C6H5JYQ", misson: @ShHaitiMission})
Ngo.create({name: "Just Haiti", category: "Agricultural/Environmental", website: "http://justhaiti.org/", content: @JustHaiti, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=XCVGYVA6WEP6U", misson: @JustHaitiMission})
Ngo.create({name: "Youthaiti", category: "Health/Community Organizing", website: "http://youthaiti.org/", content: @Youthaiti , donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KD4TG8DKY47FG", misson: @YouthaitiMission})
Ngo.create({name: "Heart in Haiti", category: "Education", website: "http://heartinhaiti.org/who-we-are/", content: @HeartInHaiti, donate: "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6K46CMT6MH674", misson: @HeartInHaitiMission})


Lisa

<% @ngos.each do |ngo| %>
  <div id="modal-text">
      <div class="reveal" id="modal<%= ngo.id %>" data-reveal>
    <div class="modaltext">
      <h1><%= ngo.name %></h1>
      <h4><%= ngo.content %></h4>
  </div>
    <button class="close-button" data-close aria-label="Close modal" type="button">
      <span aria-hidden="true">&times;</span>
    </button>
<div id="btn-learn"><%= link_to "Learn More", ngo_path(ngo) %></div>
  </div>
</div>
<% end %>

Sherie

class AddSlugToNgos < ActiveRecord::Migration[5.0]
  def change
    add_column :ngos, :slug, :string
    add_index :ngos, :slug, unique: true
  end
end



```
