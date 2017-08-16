# Deploying via Heroku

## Convert DB to postgres
- Postgres is installed by default: https://community.c9.io/t/setting-up-postgresql/1573
  - Start the server:  `sudo service postgresql start`
  - Enter the Postgres command line `psql`
    - Create the database  `CREATE DATABASE "myapp_development";`
      - *the database name should reflect the name of your application*
    - List databases `\list`
    - Exit `\q`

- Change gem file to use postures as db
  ```
      # Use sqlite3 as the database for Active Record
      # gem 'sqlite3'
      # Use postgresql as the database for Active Record
      gem 'pg', '~> 0.18'
  ```
- Run `bundle install`


- Modify config/database.yml
  - *note the database name should reflect the name of your application*

```
    default: &default
      adapter: postgresql
      encoding: unicode
      # For details on connection pooling, see Rails configuration guide
      # http://guides.rubyonrails.org/configuring.html#database-pooling
      pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

    development:
      <<: *default
      database: myapp_development

    # Warning: The database defined as "test" will be erased and
    # re-generated from your development database when you run "rake".
    # Do not set this db to the same as development or production.
    test:
      <<: *default
      database: myapp_test

    production:
      <<: *default
      database: myapp_production
      username: myapp
      password: <%= ENV['MYAPP_DATABASE_PASSWORD'] %>
```

- Re-run your migration and seed files using `rake db:migrate` and `rake db:seed`
- Test your app using the local server to be sure that it still works correctly

## Deploy with Heroku

*Reference:* [*Getting Started with Rails 4.x on Heroku*](https://devcenter.heroku.com/articles/getting-started-with-rails4)


- Set up a [Heroku](https://www.heroku.com) account
- Set up [Heroku in cloud9](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup)
  - Install Heroku
    ```
    wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh
    ```
  - login: `heroku login`
- Add Heroku gems to the gemfile
  - `gem 'rails_12factor', group: :production`
- Specify Ruby version in app.  At end of Gem file add:
  - `ruby "2.3.0"`
- Run `bundle install`
  - Check if the gem installed - if not you may need to remove  `BUNDLE_WITHOUT: "production"`  from .bundle/config
- If the app is not in the root directory of a git repository, set it one up: `git init`
- Commit your changes 
```
    $ git add .
    $ git commit -m "changed to Postgres db"
```
- Deploy your app to Heroku using ```heroku create```
  - Make note of the URL - this is the URL for your app
  - Verify that Heroku is a remote using `git remote -v`
  - If it’s not there add it using: `heroku git:remote -a app-name`
    -  example app name: `radiant-garden-35190`
- Deploy your code:

```
    git push heroku master
```

- Migrate your data
```
    heroku run rake db:migrate
    heroku run rake db:seed
```
- Visit your application
  - You should be able to refresh the URL you noted previously
- To ensure there is a dyno running:  `heroku ps:scale web=1`
- To check status:  `heroku ps`

### View the logs
- If you run into any problems getting your app to perform properly, you will need to check the logs.
- You can view information about your running app using one of the [logging commands](https://devcenter.heroku.com/articles/logging), `heroku logs`
