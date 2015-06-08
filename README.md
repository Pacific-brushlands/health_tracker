#Health Tracker

##Overview
This project was creating using pair programming. Throughout the project we used TDD (test driven development). Together we built a Rails
application to store information about an individual's health. Metrics tracked are:
  * weight
  * daily steps taken
  * calories consumed
  * exercises performed

###Objectives
This application allows a user to store information to track their habits. Each
piece of information corresponds to a separate data table. In the application,
the user is brought to a dashboard where they can navigate to the different tables,
view their statistics, and add or edit their information. A fifth table was
created, Exercise Types, which is related to the table Exercise Tasks.

Here is a link to our database diagram demonstrating the relation between tables
* [ERD](https://www.lucidchart.com/documents/edit/1b09db66-d259-4999-8548-1ad9a14faa72?shared=true)

###To View via Heroku...
To view our live app via Heroku
* Click [here](http://pacific-brushlands-8970.herokuapp.com/)

###To View via Localhost...
* Clone repository to your computer from [here](https://github.com/Pacific-brushlands/health_tracker.git)
* In terminal run...
    * It's quite possible you'll need to run `bundle install --without production` first
    * `bin/rake db:migrate`
    * `bin/rake db:seed`
    * `bin/rails server`
    * Open your browser and navigate to `localhost:3000`
    * from here you can navigate to add new data or view all existing data in a table
    * to get back to the root page, or the Dashboard, just click the `Pacific Brushlands` text in the footer
