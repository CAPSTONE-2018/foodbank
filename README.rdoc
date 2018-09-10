== README

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


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

# Northern Illinois Foodbank

## Background
The Northern Illinois Food Bank is a non-profit organization that engages the community in a commitment to feed our hungry neighbors. Across 13 counties, food manufacturers, local groceries, corporations, foundations, and individuals come together to donate food and funds, and evaluate and repack food for distribution to our more than 800 network partners – the food pantries, soup kitchens, shelters and youth and senior feeding programs that serve more than 71,000 different people each week.

## Project Overview
The Northern Illinois Food Bank does compliance checks with local pantries. They are interested in simplifying the process with the help of a web-baed app that their compliance team would use when they go to each food pantry. The application will take an outdated process of filling out forms by hand and allow them to use a tablet. This would a useful because now instead of keeping track of physical forms that could be lost or destroyed, their data will now be safe in a database. There will be a convenience factor when they go back to look up data. Before they had paper files to look through to find information about a certain food pantry. With the help of this application, they will be able to look through a database to find records much more efficiently.

 The app will keep track of all of the important credentials about each panty, such as their location, director's name and tax verification. It will provide a convenient form to be filled out each time a pantry is monitored, and make note of the person that was spoken too. The application will combine the six pages into an interactive process.

 ## Current Status
 The project has been implemented using [Ruby on Rails](http://rubyonrails.org) with a [Postgres](https://www.postgresql.org) database.  The current version is running on [Heroku](https://radiant-beyond-75664.herokuapp.com/login).  Updates to the project include
 * the ability to attach files and store them in the database (look inside docs>uploadfiles.md to see resources and source code)
 * Hosting the webservice
 * Ability to save forms as a PDF
 * Ability to edit all forms (currently we just have the ability to edit the fb_agencies form)
 * Forms that need to be broken up (Fb agency has been broken up. The other form that needs to be broken up is the emergency food form.)
 * Create FbAgency button pops up in step 3, need to figure out why
 * Authorization Verification (as it is anyone can signup and submit forms, needs to have some kind of authorization to verify employment)
 * Reports
