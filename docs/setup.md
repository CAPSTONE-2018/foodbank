# Setting up Development Environment
First, create a new **blank** workspace in [Cloud9](https://c9.io/).  I will send you an invitation to join my team, so that you are able to set-up an account without a credit card.  Be sure to use the Chrome browser when working with Rails in Cloud9.

## Downgrade Ruby
The workspace uses Ruby 2.4 but the app was developed in 2.3, so downgrade Ruby
```
rvm install 2.3.0
rvm use 2.3.0
```

## Install Rails in Cloud9
At the command line type the following commands.  Note that these commands  may take a few minutes to run.

```
gem install rails
bundle install
```

## Set-up the application
1. Clone this Git repository: `git clone https://github.com/Capstone-Fall-2017/foodbank.git`
1. Move to the foodbank directory that was created when you cloned the repository:  `cd foodbank`
3. Run database migrations:  `rake db:migrate`
1. Launch the rails application: `rails server -p $PORT -b $IP`
1. Click on the URL appears in the Cloud9 helper.
1.  The new window will show an error.  Add `/login` to the end of the URL.  You should now see the login screen.
1. To stop the server, press `ctrl-c` at the command line and close the related browser window.


## Set-up Heroku
This environment is fine for your local development, but it does not allow you to share the application with other users.  To do this, you'll need to set up your app to use Heroku, using the instructions in [heroku.md](heroku.md)
